// https://www.codewars.com/kata/58acfe4ae0201e1708000075/
// Check that the sum of an array is more than 0.

function inviteMoreWomen(guests) {
    sumOfArray = guests.reduce((acc, val) => acc + val)
    return sumOfArray > 0
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    var result = inviteMoreWomen(input)

    console.log("Testing with " + input + ".")
    if (result === expected) {
        console.log("Test passed!")
    } else {
        console.log("Test failed. :(")
        console.log(" => Got:      " + result)
        console.log("    Expected: " + expected)
    }
    console.log()
}

test([1, -1, 1], true)
test([1, 1, 1], true)
test([-1, -1, -1], false)
test([1, -1], false)

