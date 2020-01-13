# https://www.codewars.com/kata/55c6126177c9441a570000cc
# Given a string of numbers, sort those numbers based on
# the sum of their digits.

def order_weight(weights)
  weights.split
         .sort_by { |i| [sum_digits(i), i] }
         .join " "
end

def sum_digits(number)
  number.chars
        .reduce(0) { |sum, i| i.to_i + sum }
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = order_weight input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test "103 123 4444 99 2000", "2000 103 123 4444 99"
test "2000 10003 1234000 44444444 9999 11 11 22 123", "11 11 2000 10003 22 123 1234000 44444444 9999"
