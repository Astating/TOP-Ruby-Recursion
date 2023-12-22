# frozen_string_literal: true

def fibs(num)
  raise ArgumentError, 'Input must be a positive number or zero' if num.negative?

  fibonacci_sequence = [0, 1]

  return fibonacci_sequence.first(num) if num < 2

  fibonacci_sequence.push(fibonacci_sequence[-2] + fibonacci_sequence[-1]) until fibonacci_sequence.length == num

  fibonacci_sequence
end

def fibs_rec(num)
  raise ArgumentError, 'Input must be a positive number or zero' if num.negative?

  return [0, 1].first(num) if num < 2

  array = fibs_rec(num - 1)

  array << array[-1] + array[-2]
end

9.times { |num| p fibs(num) }
9.times { |num| p fibs_rec(num) }
