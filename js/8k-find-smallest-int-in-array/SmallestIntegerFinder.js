class SmallestIntegerFinder {
  findSmallestInt(args) {
      return args.reduce((a, b) => a < b ? a : b)
  }
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    var sif = new SmallestIntegerFinder();
    var result = sif.findSmallestInt(input)
    
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

test([1,2,3], 1)
test([78,56,232,12,8], 8)
test([78,56,232,12,18], 12)
test([78,56,232,412,228], 56)
test([78,56,232,12,0], 0)
test([1,56,232,12,8], 1)
