import Foundation

let sentence = "swift is fun and swift is fast"
let words = sentence.split(separator: " ")

let wordCount = words.count
print("(a) Number of words: \(wordCount)")

let uniqueWords = Set(words)
print("(b) Unique words: \(uniqueWords.sorted())")


var wordFrequencies: [String: Int] = [:]
for word in words {
    wordFrequencies[String(word), default: 0] += 1
}
print("(c) Word frequencies: \(wordFrequencies)")

let rankedWords = wordFrequencies.sorted { first, second in
    if first.value != second.value {
        return first.value > second.value // Higher frequency comes first
    }
    return first.key < second.key // Alphabetical order breaks ties
}

print("(d) Ranked words:")
for (word, count) in rankedWords {
    print("    \(word): \(count)")
}
