# https://www.codewars.com/kata/52742f58faf5485cae000b9a/train/ruby
# Given an integer representing the number of seconds, return a
# string such as "1 year, 2 hours and 5 seconds".

def format_duration(seconds)
  return "now" if seconds.zero?

  seconds_in = {
    :second => 1,
    :minute => 60,
    :hour   => 3_600,
    :day    => 86_400,
    :year   => 31_536_000
  }
  size_order = [ :year, :day, :hour, :minute, :second ]

  out = Array.new
  size_order.each do |t|
    value = seconds / seconds_in[t]
    if value != 0
      out << "#{value} #{t.to_s}#{"s" if value != 1}"
      seconds -= value * seconds_in[t]
    end
  end

  return out[0] if out.length == 1
  out[0...-1].join(", ") + " and #{out[-1]}"
end

# ---------------------- #
# Tests
# ---------------------- #
def test(input, expected)
  puts "Testing with input #{input}"
  result = format_duration input

  if result == expected
    puts " => Test passed with #{result.inspect}!\n\n"
  else
    puts " => Test failed. :("
    puts "    Got:      #{result.inspect}"
    puts "    Expected: #{expected.inspect}\n\n"
  end
end

test 1, "1 second"
test 62, "1 minute and 2 seconds"
test 120, "2 minutes"
test 3600, "1 hour"
test 3662, "1 hour, 1 minute and 2 seconds"
