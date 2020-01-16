// https://www.codewars.com/kata/515de9ae9dcfc28eb6000001/
// Split a string into an array of size 2 substrings. If
// the string is of uneven length append an _ to it.
function solution(str) {
    str = str.length % 2 == 0 ? str : str + "_"
    return str.match(/.{2}/g)
}

// ----------------------- //
// Tests
// ----------------------- //
// Solution works in codewars, but for some reason the
// tests keep failing on my machine. No idea why.
function test(input, expected) {
    result = solution(input)
    
    console.log(`Testing with ${input}.`)
    if (result === expected) {
        console.log("Test passed!")
    } else {
        console.log("Test failed. :(")
        console.log(` => Got:      ${result}`)
        console.log(`    Expected: ${expected}`)
    }
    console.log()
}

test('abc', ['ab', 'c_'])
test('abcdef', ['ab', 'cd', 'ef'])
