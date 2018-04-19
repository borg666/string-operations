import XCTest
@testable import StringOperations

class PalindromeTests: XCTestCase {

    let palindrome = Palindrome()

    func testWhenStringIsPalindrome() {
        XCTAssertTrue(palindrome.isPalindrome(value: "mom"))
        XCTAssertTrue(palindrome.isPalindrome(value: "racecar"))
        XCTAssertTrue(palindrome.isPalindrome(value: "madam"))
        XCTAssertTrue(palindrome.isPalindrome(value: "amama"))
        XCTAssertTrue(palindrome.isPalindrome(value: "iki"))
        XCTAssertTrue(palindrome.isPalindrome(value: "ikkki"))
        XCTAssertTrue(palindrome.isPalindrome(value: "i"))
    }

    func testWhenGivenStringIsNotPalindrome() {
        XCTAssertFalse(palindrome.isPalindrome(value: "mo"))
        XCTAssertFalse(palindrome.isPalindrome(value: "mo2"))
        XCTAssertFalse(palindrome.isPalindrome(value: "1mo"))
        XCTAssertFalse(palindrome.isPalindrome(value: "mad1am"))
        XCTAssertFalse(palindrome.isPalindrome(value: ""))
    }

}
