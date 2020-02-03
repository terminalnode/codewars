# https://www.codewars.com/kata/52b305bec65ea40fe90007a7
# Given a string and a list of strings, return a list of
# all list entries that are an anagram of the first string.

def grabscrab anagram, dictionary
  sortogram = anagram.chars.sort
  dictionary.select { |s| s.chars.sort == sortogram }
end

# ---------------------- #
# Tests
# ---------------------- #
def test(anagram, dictionary, expected)
  puts "Testing with input #{anagram} and #{dictionary}"
  result = grabscrab anagram, dictionary

  if result == expected
    puts " => Test passed!\n\n"
  else
    puts " => Test failed. :(\n\n"
  end
end

test "trisf", ["first"], ["first"]
test "oob", ["bob", "baobab"], []
test "ainstuomn", ["mountains", "hills", "mesa"], ["mountains"]
test "oolp", ["donkey", "pool", "horse", "loop"], ["pool", "loop"]
test "ortsp", ["sport", "parrot", "ports", "matey"], ["sport", "ports"]
test "ourf", ["one","two","three"], []
