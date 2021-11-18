class Solution:
    def findDisappearedNumbers(self, nums: List[int]) -> List[int]:
        nums.sort()
        highest = max(nums[-1], len(nums))
        lst = [i for i in range(1, highest+1)]
        return [i for i in set(lst) - set(nums)]