class Palindrome {

    func findUnwantedCharacter(value: String) -> Int? {
        for index in 0..<value.count {
            var result = value

            let start = value.index(value.startIndex, offsetBy: index)
            let end = value.index(value.endIndex, offsetBy: index - value.count)
            result.removeSubrange(start...end)

            if isPalindrome(value: result) {
                print(result, "found a palindrome removed index=", index)
                return index
            }
        }
        return nil
    }

    func isPalindrome(value: String) -> Bool {
        if value == "" {
            return false
        }
        return value == String(value.lowercased().reversed())
    }

}
