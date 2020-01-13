# https://www.codewars.com/kata/54d81488b981293527000c8f
# This file is my first attempt at this problem, however it's
# too slow and times out when doing the tests.
#
# The other file is a passing solution, that's the one you're looking for.

require 'set'

def sum_pairs(numbers, target)
  num_index = 0
  pair_index = 0
  pair = nil

  while numbers.length > 0
    num_index += 1
    break if pair != nil and num_index > pair_index

    num = numbers.shift
    tested = Set.new

    numbers.each_with_index do |val, other_index|
      next if val + num != target
      next if tested.include? val
      tested.add(val)

      new_index = num_index + other_index
      next if pair != nil and new_index > pair_index

      if pair == nil or new_index < pair_index 
        pair_index = new_index
        pair = [num, val]
      end # end of if clause
    end # end numbers.each_with_index
  end # end while numbers.length > 1

  pair
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
