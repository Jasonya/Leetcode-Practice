class Solution(object):
    def longestOnes(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: int
        """
        i = 0 # record the start point
        longest = 0
        for j in range(len(nums)):
            if nums[j] == 0:
                k -= 1
            while k < 0:
                if nums[i] == 0:
                    k += 1
                i+= 1
            
            
            
            longest = max(longest, j-i+1)
        return longest