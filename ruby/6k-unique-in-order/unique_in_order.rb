# https://www.codewars.com/kata/54e6533c92449cc251001667/ 

def unique_in_order(iterable)
  last = nil
  result = []
  iterable = iterable.chars if iterable.class == String

  iterable.each do |i|
    result << i if i != last
    last = i
  end

  result
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = unique_in_order input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test 'AAAABBBCCDAABBB', ['A', 'B', 'C', 'D', 'A', 'B']
test 'ABBCcAD', ['A', 'B', 'C', 'c', 'A', 'D']
test [1,2,2,3,3], [1,2,3]
