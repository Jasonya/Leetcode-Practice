class Solution:
    def sortColors(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        p1 = cur = 0
        p2 = len(nums) - 1
        while p2 >= cur:
            if nums[cur] == 0:
                nums[p1],  nums[cur] = nums[cur], nums[p1]
                p1 += 1
                cur += 1
            elif nums[cur] == 2:
                nums[p2], nums[cur] = nums[cur], nums[p2]
                p2 -= 1
            else:
                cur +=1