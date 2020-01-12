def find_nb(m)
  volume = 1;
  cubes = 1;

  while volume < m
    cubes += 1
    volume += cubes ** 3
  end

  volume == m ? cubes : -1
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = find_nb(input)

  if result == expected
    puts " => Test passed with result #{result}!\n\n"
  elsif
    puts " => Test failed! Expected #{expected}, got #{result}. :(\n\n"
  end
end

test(4183059834009, 2022)
test(24723578342962, -1)
test(135440716410000, 4824)
test(40539911473216, 3568)
