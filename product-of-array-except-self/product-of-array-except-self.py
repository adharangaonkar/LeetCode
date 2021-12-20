class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
        res=[1]*len(nums)
        left=right=1
        for i in range(len(nums)):
            res[i]*=left
            res[~i]*=right
            left*=nums[i]
            right*=nums[~i]
        return res