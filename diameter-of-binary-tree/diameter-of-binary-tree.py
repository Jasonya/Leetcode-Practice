# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def diameterOfBinaryTree(self, root: Optional[TreeNode]) -> int:
        self.max = 0
        def depth(r):
            if r is None:
                return 0
            left, right = depth(r.left), depth(r.right)
            self.max = max(self.max, left+right)
            return 1 + max(left, right)
        depth(root)
        return self.max
            
        