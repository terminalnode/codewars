def diamond(asterisks)
  # 0, negative and even numbers won't work
  return nil if asterisks < 1 or asterisks.even?

  spaces = 0
  rows = []
  while asterisks > 0
    line = Array.new
    spaces.times do line << " " end
    asterisks.times do line << "*" end
    line << "\n"

    rows << line.join
    asterisks -= 2
    spaces += 1
  end

  rows = rows[1..-1].reverse + rows
  rows.join
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = diamond(input)

  if result == expected
    puts " => Test passed!\n\n"
  else
    puts " => Test failed. :(\n\n"
  end
end

test(1, "*\n")
test(3, " *\n***\n *\n")
test(5, "  *\n ***\n*****\n ***\n  *\n")
test(0, nil)
test(-3, nil)
test(2, nil)
