# Enter your object-oriented solution here!
class Multiples

  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def collect_multiples
    limit_range = (1...self.limit).to_a
    threes_and_fives = limit_range.select do |number|
      number % 3 == 0 || number % 5 == 0
    end
    threes_and_fives
  end

  def sum_multiples
    sum = collect_multiples.inject(:+)
    sum
  end

end
