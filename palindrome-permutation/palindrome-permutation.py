class Solution:
    def canPermutePalindrome(self, s: str) -> bool:
        hashDict = {}
        odd_cnt = 0
        for i in s:
            if i not in hashDict:
                hashDict[i] = 1
            else:
                hashDict[i] += 1

        for i in hashDict.values():
            if i%2 !=0:
                odd_cnt +=1
        if odd_cnt > 1:
            return False
        else:
            return True