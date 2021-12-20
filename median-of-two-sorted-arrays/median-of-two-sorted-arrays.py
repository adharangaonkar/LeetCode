class Solution:
    def findMedianSortedArrays(self, nums1: List[int], nums2: List[int]) -> float:
        for i in nums2:
            nums1.append(i)
        
        num1 = nums1.sort()
        if len(nums1)%2 !=0:
            median_ind = (len(nums1)//2) 
            return nums1[median_ind]
        else:
            median_ind =(len(nums1)//2)-1
            median_ind_next = (len(nums1)//2) 
            return (nums1[median_ind]+nums1[median_ind_next])/2