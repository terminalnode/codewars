# https://www.codewars.com/kata/525f50e3b73515a6db000b83/
# Format an array of numbers as a phone number.
# Format: (nnn) nnn-nnnn

def createPhoneNumber(n)
  # Modern ruby doesn't require index to start at
  # 0 in n[0..2] or end at n.length - 1 when getting
  # "the rest of the list", but MRI 2.5.0 running on
  # Codewars do.
  first = n[0..2].join
  second = n[3..5].join
  third = n[6..(n.length - 1)].join
  "(#{first}) #{second}-#{third}"
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = createPhoneNumber(input)

  if result == expected
    puts " => Test passed!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test [1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "(123) 456-7890"
test [1, 1, 1, 1, 1, 1, 1, 1, 1, 1], "(111) 111-1111"
test [1, 2, 3, 4, 5, 6, 7, 8, 9, 0], "(123) 456-7890"
