class Solution:
    def permute(self, nums: List[int]) -> List[List[int]]:
        # iteration 
        res = []
        def dfs(nums, i, cur_list):
            if i == len(nums):
                res.append(cur_list.copy())
            else:
                for j in range(i, len(nums)):
                    nums[i], nums[j] = nums[j], nums[i]
                    cur_list.append(nums[i])
                    dfs(nums, i+1, cur_list)
                    cur_list.pop()
                    nums[i], nums[j] = nums[j], nums[i]
                    
        dfs(nums, 0, [])
        return res
        
        # recursion
        # res = []
        # def dfs(nums, res, cur):
        #     if not nums:
        #         res.append(cur)
        #     else:
        #         for i in range(len(nums)):
        #             dfs(nums[:i]+nums[i+1:], res, cur+[nums[i]])
        # dfs(nums, res, [])
        # return res
    
