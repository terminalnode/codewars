# https://www.codewars.com/kata/514a024011ea4fb54200004b
# Extract the domain name from a string.

def domain_name(url)
  url.sub(/https?:\/\//, "")
     .sub(/www\./, "")
     .sub(/\..+/, "")
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = domain_name(input)

  if result == expected
    puts " => Test passed!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test "http://google.com",   "google"
test "http://google.co.jp", "google"
test "www.xakep.ru",        "xakep"
test "https://youtube.com", "youtube"
