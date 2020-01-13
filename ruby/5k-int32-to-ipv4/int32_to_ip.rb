# https://www.codewars.com/kata/52e88b39ffb6ac53a400022e
# Given an integer, convert it to 32-bit binary form,
# extract the four octets of that binary form and piece
# together an IP-address.

def int32_to_ip(int32)
  int32.to_s(2)
       .rjust(32, "0")
       .scan(/\d{8}/)
       .map { |i| i.to_i 2 }
       .join(".")
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = int32_to_ip input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test 32, "0.0.0.32"
test 2149583361, "128.32.10.1"
test 2154959208, "128.114.17.104"
test 0, "0.0.0.0"
test 2149583361, "128.32.10.1"
