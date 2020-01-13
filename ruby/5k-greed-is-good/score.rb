def score(dice)
  score = 0
  (1..6).each do |i|
    count = dice.count i

    triple_bonus = i == 1 ? 1000 : i * 100
    score += count / 3 * triple_bonus

    if i == 1 or i == 5
      single_bonus = i == 1 ? 100 : 50
      score += count % 3 * single_bonus
    end
  end

  score
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = score input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test [2, 3, 4, 6, 2], 0
test [2, 2, 2, 3, 3], 200
test [2, 4, 4, 5, 4], 450
