def sum_dig_pow(a, b)
  result = Array.new

  (a..b).each do |i|
    sum = i.to_s
           .chars
           .each_with_index
           .map { |val, index| val.to_i ** (index + 1) }
           .sum
    result << sum if sum == i
  end

  result
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = sum_dig_pow(*input)

  if result == expected
    puts " => Test passed!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test([1, 10], [1, 2, 3, 4, 5, 6, 7, 8, 9])
test([1, 100], [1, 2, 3, 4, 5, 6, 7, 8, 9, 89])
test([10, 100], [89])
test([90, 100], [])
test([90, 150], [135])
test([50, 150], [89, 135])
test([10, 150], [89, 135])
