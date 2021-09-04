class Solution:
    def singleNumber(self, nums: List[int]) -> int:
#         d = {i: nums.count(i) for i in nums}
#         for i, j in d.items():
# #         print(i, j)
#             if j == 1:
#                 return i
        dict_count = {}
        for x in nums:
            if x in dict_count.keys():
                dict_count[x] +=1
            else:
                dict_count[x] =1
        for i, j in dict_count.items():
            if j == 1:
                return i  