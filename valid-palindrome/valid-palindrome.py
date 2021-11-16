class Solution:
    def isPalindrome(self, s: str) -> bool:
#         l = 0
#         r = len(s) -1
#         while l <r:
#             while l<r and s[l].isalnum()== False:
#                 l+=1
#             while r>l and s[r].isalnum()== False:
#                 r-=1    
#             if s[l].lower() != s[r].lower():
#                 return False

#             l, r = l+1, r-1
#         return True    
        lst = []
        for _ in s:
            if _.isalnum() == True:
                lst.append(_.lower())

        if lst == lst[::-1]:
             return True
        else:
            return False
    
    
