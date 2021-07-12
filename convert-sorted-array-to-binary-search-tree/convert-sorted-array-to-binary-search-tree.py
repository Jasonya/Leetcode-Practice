# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> TreeNode:
        def helper(arr, st, end,):
            if st > end:
                return None
            if st == end:
                return TreeNode(arr[st])
            mid = (st + end) // 2
            subt_root = TreeNode(arr[mid])
            subt_root.left = helper(arr, st, mid-1)
            subt_root.right = helper(arr, mid+1, end)
            return subt_root
        return helper(nums, 0, len(nums)-1)