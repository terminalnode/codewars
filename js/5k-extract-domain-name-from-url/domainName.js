// https://www.codewars.com/kata/514a024011ea4fb54200004b/
// Extract the domain name from a URL.
//
function domainName(url){
    return url.replace(/https?:\/\//g, "")
              .replace("www.", "")
              .replace(/\..+/g, "")

    // Alternative solution
    // return url.replace(/(https?:\/\/)?(www\.)?/g, "").split(".")[0]
}

// ----------------------- //
// Tests
// ----------------------- //
function test(input, expected) {
    result = domainName(input)
    
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

test("http://google.com", "google");
test("http://google.co.jp", "google");
test("www.xakep.ru", "xakep");
test("https://youtube.com", "youtube");
