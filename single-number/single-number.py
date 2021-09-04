class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        d = {i: nums.count(i) for i in nums}
        for i, j in d.items():
#         print(i, j)
            if j == 1:
                return i