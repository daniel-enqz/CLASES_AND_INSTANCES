require 'pry-byebug'

class SlotMachine
  SYMBOLS = %w[cherry seven ball star joker].freeze

  def initialize(reels)
    @reels = reels
  end

  # cherry 10
  def score
    if all_are_equal?
      SYMBOLS.index(@reels[0]) * 10 + 10
    elsif two_equal_and_joker?
      return (SYMBOLS.index(@reels[0]) * 10 + 10) / 2
    else
      return 0
    end
  end

  private

  def all_are_equal?
    @reels.uniq.size == 1
  end

  def two_equal_and_joker?
    @reels.uniq.size == 2 && @reels.include?("joker")
  end
end
