class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        b = [a for a in range(len(nums)+1)]
        num_diff = [a for a in set(b) - set(nums)] 
        return num_diff[0]