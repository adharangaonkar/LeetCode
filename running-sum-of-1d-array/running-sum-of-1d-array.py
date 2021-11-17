class Solution:
    def runningSum(self, nums: List[int]) -> List[int]:
        currSum = 0
        lst = []
        for i in nums:
            currSum+=i
            lst.append(currSum)
        return lst  