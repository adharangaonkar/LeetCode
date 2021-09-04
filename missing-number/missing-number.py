class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        # b = [a for a in range(len(nums)+1)]
        # num_diff = [a for a in set(b) - set(nums)] 
        # return num_diff[0]
        
        a = sum(a for a in range(len(nums) + 1))
        nums_sum = sum(a for a in nums)
        return a - nums_sum
        