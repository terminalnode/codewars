def list names
  return "" if names.size == 0
  return names[0][:name] if names.size == 1

  name_list = names[0...-1].map {|name| name[:name]}.join(", ")
  name_list += " & #{names[-1][:name]}"
end

test1 = list([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'},{name: 'Homer'},{name: 'Marge'}])
expected1 = 'Bart, Lisa, Maggie, Homer & Marge'
puts test1 == expected1 ? "Passed test #1" : "Failed test #1"

test2 = list([{name: 'Bart'},{name: 'Lisa'}])
expected2 = 'Bart & Lisa'
puts test2 == expected2 ? "Passed test #2" : "Failed test #2"

test3 = list([{name: 'Bart'}])
expected3 = 'Bart'
puts test3 == expected3 ? "Passed test #3" : "Failed test #3"
