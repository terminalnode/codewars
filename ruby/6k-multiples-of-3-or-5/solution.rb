# https://www.codewars.com/kata/514b92a657cdc65150000006
# Given an integer n, return the sum of all positive numbers
# smaller than n that are divisible by 3 or 5.

def solution(n)
  (1...n).select { |i| i % 3 == 0 or i % 5 == 0 }
         .sum
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = solution input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test 10, 23
test 20, 78
test 200, 9168

