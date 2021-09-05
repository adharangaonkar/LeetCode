class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        count_dict = {}
        for a in nums:  
            if a in count_dict.keys():
                return True        
            else:
                count_dict[a] = 2

        return False