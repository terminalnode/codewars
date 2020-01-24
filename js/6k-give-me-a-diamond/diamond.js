// https://www.codewars.com/kata/5503013e34137eeeaa001648/
// Given a number n, return a diamond shape of asteriskes with
// n asteriskes in the middle. n-2 above and below it and so on.
// For example n = 5 should return:
//   *
//  ***
// *****
//  ***
//   *
// For negative numbers, 0 and even numbers return null.

function diamond(stars) {
    if (stars < 1 || stars % 2 === 0) {
        return null
    }

    spaces = 0
    rows = []
    rows.push(create_row(spaces, stars))
    spaces += 1
    stars -= 2

    while (stars > 0) {
        rows.unshift(create_row(spaces, stars))
        rows.push(create_row(spaces, stars))
        spaces += 1
        stars -= 2
    }

    return rows.join("\n") + "\n"
}

function create_row(spaces, stars) {
    return (" ".repeat(spaces) + "*".repeat(stars))
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    result = diamond(input)

    console.log("Testing with " + input + ".")
    if (result === expected) {
        console.log("Test passed!")
    } else {
        console.log("Test failed. :(")
        console.log(" => Got:      \n" + result)
        console.log("    Expected: \n" + expected)
    }
    console.log()
}

test(1, "*\n");
test(3, " *\n***\n *\n");
test(5, "  *\n ***\n*****\n ***\n  *\n");
test(2, null);
test(-3, null);
test(0, null);
