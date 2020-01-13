def is_valid_walk(walk)
  x = 0
  y = 0
  steps = walk.length

  walk.each do |d|
    case d
    when "n"
      y -= 1
    when "s"
      y += 1
    when "w"
      x -= 1
    when "e"
      x += 1
    end
  end

  x == 0 and y == 0 and steps == 10
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = is_valid_walk(input)

  if result == expected
    puts " => Test passed with #{result}!\n\n"
  else
    puts " => Test failed, got #{result} expected #{expected}. :(\n\n"
  end
end

test(['n','s','n','s','n','s','n','s','n','s'], true)
test(['w','e','w','e','w','e','w','e','w','e','w','e'], false)
test(['w'], false)
test(['n','n','n','s','n','s','n','s','n','s'], false)
