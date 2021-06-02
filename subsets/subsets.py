class Solution(object):
    def subsets(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        # dfs/recursion
#         res = []
#         self.dfs(nums, 0, res, [])
#         return res
    
#     def dfs(self, nums, index, res, cur):
#         res.append(cur)
#         for i in range(index, len(nums)):
#             self.dfs(nums,i+1,res,cur+[nums[i]])
                
        
        result = [[]]
        for num in nums:
            result += [i+[num] for i in result]
        return result
        