// https://www.codewars.com/kata/58aa68605aab54a26c0001a6/
// Given a year, find the year number which is strictly
// larger than the given one and has only distinct digits.

function distinctDigitYear(year) {
    var totalDigits = 0
    var uniqueDigits = 1

    while (totalDigits != uniqueDigits) {
        year++
        totalDigits = (year.toString()).length
        uniqueDigits = new Set(year.toString()).size
    }

    return year
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    var result = distinctDigitYear(input)

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

test(1987, 2013)
test(2013, 2014)
