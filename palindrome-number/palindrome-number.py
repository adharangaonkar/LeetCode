class Solution:
    def isPalindrome(self, x: int) -> bool:
        # if x<0: 
        #     return False
        # else:
        #     x_str = str(x)
        #     x_reverse = x_str[::-1]
        #     if int(x_reverse) == x:
        #         return True
        #     else:
        #         return False
        if x <0:
            return False
        else:
            x = str(x)
            if x == x[::-1]:
                return True
            else:
                return False