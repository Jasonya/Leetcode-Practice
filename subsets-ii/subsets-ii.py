class Solution:
    def subsetsWithDup(self, nums: List[int]) -> List[List[int]]:
        res = []
        # contain duplicate - sort
        nums.sort()
        def helper(nums, index, res, cur):
            if cur not in res:
                res.append(cur)
            for i in range(index, len(nums)):
                helper(nums, i+1, res, cur+[nums[i]])
        helper(nums, 0, res, [])
        return res
        
        