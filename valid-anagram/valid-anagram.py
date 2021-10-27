class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        
        # return(sorted(s)==sorted(t))
        # Edge Cases
        s = s.lower()
        t = t.lower()

        first_map = {}
        for a in s:
            if a not in first_map:
                first_map[a] =1
            else:
                first_map[a] +=1

        for b in t:
            if b in first_map:
                first_map[b] -=1
            else:
                first_map[b] = 1

        for _ in first_map.values():
            if _ != 0:
                return False
        return True