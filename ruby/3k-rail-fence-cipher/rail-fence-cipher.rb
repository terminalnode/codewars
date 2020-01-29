# https://www.codewars.com/kata/58c5577d61aefcf3ff000081/
# A rail fence cipher is a weird cipher where you put the
# string in a zig-zag pattern going up and down. For example
# the string "WEAREDISCOVEREDFLEEATONCE" would be encoded:
# W       E       C       R       L       T       E
#  E   R   D   S   O   E   E   F   E   A   O   C
#    A       I       V       D       E       N
# Resulting in WECRLTEERDSOEEFEAOCAIVDEN when read normally
# from left to right.
#
# We need to implement one method to encode this mess, and
# then one to decode it.
# Oh and we'll also get a number for how many rows the rail has.
#
# It's ruby on rails baby!

def encode_rail_fence_cipher(str, num_rails)
  rows = Array.new
  num_rails.times { rows << String.new }

  way_down = Array 0 ... num_rails - 1
  way_up   = Array 1 ..  num_rails - 1
  rail = (way_down + way_up.reverse)

  rail.cycle.each_with_index do |row, index|
    letter = str[index]
    letter.nil? ? break : rows[row] << letter
  end

  rows.join
end

def decode_rail_fence_cipher(str, num_rails)
end

# ---------------------- #
# Tests
# ---------------------- #
def test(type, input, num, expected)
  puts "Testing with input #{input}"
  if type == :encode then
    result = encode_rail_fence_cipher input, num
  else
    result = decode_rail_fence_cipher input, num
  end

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test :encode, 'WEAREDISCOVEREDFLEEATONCE', 3, 'WECRLTEERDSOEEFEAOCAIVDEN'
test :decode, 'WECRLTEERDSOEEFEAOCAIVDEN', 3, 'WEAREDISCOVEREDFLEEATONCE'
