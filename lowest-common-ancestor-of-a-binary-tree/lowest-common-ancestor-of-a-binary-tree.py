# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        if root == p or root == q:
            return root
        right = left = None
        if root.left is not None:
            right = self.lowestCommonAncestor(root.left, p, q)
        if root.right is not None:
            left = self.lowestCommonAncestor(root.right, p, q)
        
        if right is not None and left is not None:
            # both find, means root is LCA
            return root
        # if not find
        if left is not None:
            return left
        return right
        