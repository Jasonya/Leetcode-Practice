class Solution(object):
    def permute(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        # build-in function permutation
        # return list(permutations(nums))
        
        # dfs
        res = []
        self.dfs(nums, res, [])
        return res
    
    def dfs(self, nums, res, cur):
        if not nums:
            res.append(cur)
       
        for i in range(len(nums)):
            self.dfs(nums[:i] + nums[i+1:], res, cur+[nums[i]])

        # visit
#         visited = [False] * len(nums)
#         res = []
        
#         def dfs(cur):
#             if len(cur) == len(nums):
#                 res.append(cur)
#             else:
#                 for i in range(len(nums)):
#                     if not visited[i]:
#                         visited[i] = True
#                         dfs(cur+[nums[i]])
#                         visited[i] = False
#         dfs([])
#         return res