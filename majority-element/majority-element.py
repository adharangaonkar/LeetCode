class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        dict_count = {}
        nums_half = len(nums)/2
        for x in nums:
            if x in dict_count.keys():
                dict_count[x] +=1
            else:
                dict_count[x] =1
            for i,j in dict_count.items():
                if j > nums_half:
                    return i