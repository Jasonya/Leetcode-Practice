# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def isValidBST(self, root: Optional[TreeNode]) -> bool:
        def helper(n, low, high):
            if not n:
                return True
            elif low is not None and n.val <= low:
                return False
            elif high is not None and n.val >= high:
                return False
            return helper(n.left, low, n.val) and helper(n.right, n.val, high)
        
        return helper(root, None, None)
        