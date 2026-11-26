func isPalindrome(_ text: String) -> Bool{
   let lower = text.lowercased().filter { $0.isLetter}
   return lower == String(lower.reversed())
}
func vowelCount(in text: String) -> Int{
   let vowels = "aeiou"
   let lower = text.lowercased()
   let v = lower.filter { vowels.contains($0)}
   return v.count
}
func wordCount(in text: String) -> Int{
   let word = text.split {!$0.isLetter}
   return word.count
}
func wordCount(in text: String , minLength: Int ) -> Int{
   let word = text.split {!$0.isLetter}
   let filter = word.filter {$0.count >= minLength}
   return filter.count
}

let sentence = "A man, a plan, a canal: Panama"

print("Palindrome:", isPalindrome(sentence))
print("Vowel count:", vowelCount(in: sentence))
print("Word count:", wordCount(in: sentence))
print("Words with minimum 4 letters:", wordCount(in: sentence, minLength: 4))