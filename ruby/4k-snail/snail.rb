# https://www.codewars.com/kata/521c2db8ddc89b9b7a0000c1/
# Traverse a 2D array clockwise, return numbers in the order they come up.

def snail(array)
  return Array.new if array == [[]]

  # step_map is an array saying how many
  # steps to take before each turn
  step_map = Array.new
  (1 .. array.length).to_a.reverse.each do |i|
    step_map << i
    step_map << i
  end
  step_map.shift

  result = Array.new
  direction = :East
  y = 0
  x = -1

  step_map.each do |steps|
    steps.times do
      case direction
      when :East
        x += 1
      when :West
        x -= 1
      when :South
        y += 1
      when :North
        y -= 1
      end

      result << array[y][x]
    end

    direction = turnFrom direction
  end

  result
end

def turnFrom(direction)
  case direction
  when :North
    :East
  when :West
    :North
  when :South
    :West
  when :East
    :South
  else
    raise ArgumentError
  end
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = snail input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test [[1, 2, 3],
      [4, 5, 6],
      [7, 8, 9]],
     [1, 2, 3, 6, 9, 8, 7, 4, 5]
