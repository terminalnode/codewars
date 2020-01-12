def order(words)
  words.split()
       .sort_by { |w| w[/\d+/] }
       .join " "
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input '#{input}'"
  result = order(input)

  if result == expected
    puts " => Test passed with result '#{result}'!\n\n"
  else
    puts " => Test failed!"
    puts "    Expected: '#{expected}'"
    puts "    Got:      '#{result}'\n\n"
  end
end

test("is2 Thi1s T4est 3a", "Thi1s is2 3a T4est")
test("4of Fo1r pe6ople g3ood th5e the2", "Fo1r the2 g3ood 4of th5e pe6ople")
test("", "")
