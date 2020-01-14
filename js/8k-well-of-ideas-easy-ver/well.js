// https://www.codewars.com/kata/57f222ce69e09c3630000212/
// Given an array containing the strings "good" and "bad",
// return "Fail!" if all are bad, "Publish!" if there are
// one or two good and "I smell a series!" if there are more
// than two good.

function well(x) {
    goods = x.reduce((acc, val) => val === "good" ? acc + 1 : acc, 0)
    if (goods === 0) {
        return "Fail!"
    } else if (goods <= 2) {
        return "Publish!"
    } else {
        return "I smell a series!"
    }
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    var result = well(input)

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

test(['bad', 'bad', 'bad'],
    'Fail!')

test(['good', 'bad', 'bad', 'bad', 'bad'],
    'Publish!')

test(['good', 'bad', 'bad', 'bad', 'bad', 'good', 'bad', 'bad', 'good'],
    'I smell a series!')
