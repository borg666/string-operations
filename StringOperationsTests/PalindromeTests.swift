import XCTest
@testable import StringOperations

class PalindromeTests: XCTestCase {

    let palindrome = Palindrome()

    func testIsPalindrome_WhenStringIsPalindrome_ReturnsTrue() {
        XCTAssertTrue(palindrome.isPalindrome(value: "mom"))
        XCTAssertTrue(palindrome.isPalindrome(value: "racecar"))
        XCTAssertTrue(palindrome.isPalindrome(value: "madam"))
        XCTAssertTrue(palindrome.isPalindrome(value: "amama"))
        XCTAssertTrue(palindrome.isPalindrome(value: "iki"))
        XCTAssertTrue(palindrome.isPalindrome(value: "ikkki"))
        XCTAssertTrue(palindrome.isPalindrome(value: "i"))
    }

    func testIsPalindrome_WhenStringIsNotPalindrome_ReturnsTrue() {
        XCTAssertFalse(palindrome.isPalindrome(value: "mo"))
        XCTAssertFalse(palindrome.isPalindrome(value: "mo2"))
        XCTAssertFalse(palindrome.isPalindrome(value: "1mo"))
        XCTAssertFalse(palindrome.isPalindrome(value: "mad1am"))
        XCTAssertFalse(palindrome.isPalindrome(value: ""))
    }

    func test_FindUnwantedCharacter_WhenStringHasPalindrome_ReturnsIndexOfUwantedCharacer() {
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "1madam"), 0)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "m1adam"), 1)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "ma1dam"), 2)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "mad1am"), 2)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "mada1m"), 4)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "madam1"), 5)

        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "race1car"), 3)
        XCTAssertEqual(palindrome.findUnwantedCharacter(value: "rac1ecar"), 3)
    }

}
