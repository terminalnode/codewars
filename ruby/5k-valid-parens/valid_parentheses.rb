# https://www.codewars.com/kata/52774a314c2333f0a7000688

def valid_parentheses(string)
  parens = 0

  string.each_char do |c|
    parens += 1 if c == "("
    parens -= 1 if c == ")"

    return false if parens < 0
  end

  parens == 0
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = valid_parentheses(input)

  if result == expected
    puts " => Test passed as #{result}!\n\n"
  else
    puts " => Test failed! Expected #{expected} but got #{result}.\n\n"
  end
end

test("  (" ,false)
test(")test" ,false)
test("" ,true)
test("hi())(" ,false)
test("hi(hi)()" ,true)
