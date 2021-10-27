class Solution:
    def reverseWords(self, s: str) -> str:
        spaces = " "
        words = []
        i = 0
        length = len(s)
        while i < length:
            if s[i] not in spaces:
                word_start = i
                while i < length and s[i] not in spaces:
                    i+=1
                words.append(s[word_start:i])
            i+=1
        return " ".join(words[::-1])