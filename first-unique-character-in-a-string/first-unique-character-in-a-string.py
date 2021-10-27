class Solution:
    def firstUniqChar(self, s: str) -> int:
        hashMap = {}
        lst = []
        for a in s:
                if a not in hashMap:
                    hashMap[a] = 1
                else:
                    hashMap[a] +=1

        for i, j in hashMap.items():
            if j ==1:
                lst.append(i)   

        for i,j in enumerate(s):
        #     print (i, j)
            if len(lst) == 0:
                return -1
            elif j ==lst[0]:
                return i