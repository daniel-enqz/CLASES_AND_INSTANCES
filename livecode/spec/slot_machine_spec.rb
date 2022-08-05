require_relative '../lib/slot_machine'

def test_scenario(reels, expected_score)
  it "returns #{expected_score} for #{reels[0]}/#{reels[1]}/#{reels[2]}" do
    slot_machine = SlotMachine.new(reels)
    score = slot_machine.score
    expect(score).to eq(expected_score)
  end
end


describe SlotMachine do
  describe '#score' do
    it 'returns 0 for three different symbols' do
      slot_machine = SlotMachine.new(%w[joker star bell])
      score = slot_machine.score
      expect(score).to eq(0)
    end

    # Three of the same
    test_scenario(%w[joker joker joker], 50)
    test_scenario(%w[star star star], 40)
    test_scenario(%w[ball ball ball], 30)
    test_scenario(%w[seven seven seven], 20)
    test_scenario(%w[cherry cherry cherry], 10)

    # Two of the same + Joker
    test_scenario(%w[joker joker anything], 25)
    test_scenario(%w[star star joker], 20)
    test_scenario(%w[ball ball joker], 15)
    test_scenario(%w[seven seven joker], 10)
    test_scenario(%w[cherry cherry joker], 5)

  end
  # DRY DONT REPEAT YOURSELF

end
