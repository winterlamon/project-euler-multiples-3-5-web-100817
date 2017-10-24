def collect_multiples(limit)
  limit_range = (1...limit).to_a
  threes_and_fives = limit_range.select do |number|
    number % 3 == 0 || number % 5 == 0
  end
  threes_and_fives
end

def sum_multiples(limit)
  sum = collect_multiples(limit).inject(:+)
  sum
end
