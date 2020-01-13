# https://www.codewars.com/kata/54d81488b981293527000c8f
#
# Given a list of numbers and a target number, return the
# first set of two numbers that add up to the target number.
# If the list of numbers does not contain such a set, return nil.

require 'set'
def sum_pairs(numbers, target)
  seen = Set.new

  numbers.each do |n|
    desired = target - n
    return [desired, n] if seen.include? desired
    seen.add n
  end

  nil
end

# ---------------------- #
# Tests
# ---------------------- #
def test(numbers, equal, expected)
  puts "Testing with input (#{numbers}, #{equal})"
  result = sum_pairs(numbers, equal)

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed, got #{result.inspect} expected #{expected.inspect}. :(\n\n"
  end
end

test([1, 4, 8, 7, 3, 15], 8, [1, 7])
test([1, -2, 3, 0, -6, 1], -6, [0, -6])
test([20, -13, 40], -7, nil)
test([1, 2, 3, 4, 1, 0], 2, [1, 1])
test([10, 5, 2, 3, 7, 5], 10, [3, 7])
test([4, -2, 3, 3, 4], 8, [4, 4])
test([0, 2, 0], 0, [0, 0])
test([5, 9, 13, -3], 10, [13, -3])
