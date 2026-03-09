# 88. Merge Sorted Array
# runtime: 0 ms, faster than 100.00% 
# memory usage: 12.49 MB, beats 53.31% 
# I spent 30 minutes.
class Solution(object):
    def merge(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: None Do not return anything, modify nums1 in-place instead.
        """
        if m==0:
            nums1[:]=nums2
        elif n==0:
            pass
        else:
            i,j=0,0
            val=[]
            while i<m and j<n:
                if nums1[i]<=nums2[j]:
                    val.append(nums1[i])
                    i=i+1
                else:
                    val.append(nums2[j])
                    j=j+1
            if i<m: val.extend(nums1[i:m])
            if j<n: val.extend(nums2[j:n])
            nums1[:]=val
            