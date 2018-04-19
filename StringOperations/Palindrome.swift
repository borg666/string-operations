//https://stackoverflow.com/questions/39677330/how-does-string-substring-work-in-swift

class Palindrome {

    func findUnwantedCharacter(value: String) -> Int? {
        for index in 0..<value.count {
            var result = value

            let start = value.index(value.startIndex, offsetBy: index)
            let end = value.index(value.endIndex, offsetBy: index - value.count)
            result.removeSubrange(start...end)

            if isPalindrome(value: result) {
                print(result, "startOffset=\(index) endOffset=\(index - value.count)",
                    "found a palindrome removed character at index=", index)
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
