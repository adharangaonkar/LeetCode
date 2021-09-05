class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        hash_dict = {}
        for i, j in enumerate(nums):
    #         print(i, j)
            diff = target - j
            if diff in hash_dict:
                return [i, hash_dict[diff]]
            elif diff not in hash_dict:
                hash_dict[j] = i
            