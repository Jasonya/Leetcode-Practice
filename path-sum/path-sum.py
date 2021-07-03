# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def hasPathSum(self, root: TreeNode, targetSum: int) -> bool:
        # if root is None:
        #     return False
        # res = [False]
        # def dfs(node, target):
        #     if node.left is None and node.right is None:
        #         if node.val == target:
        #             res[0] = True
        #     if node.left:
        #         dfs(node.left, target-node.val)
        #     if node.right:
        #         dfs(node.right, target-node.val)
        # dfs(root, targetSum)
        # return res[0]
    
        # m2
        if not root:
            return False
        targetSum -= root.val
        if not root.left and not root.right:
            return targetSum == 0
        return self.hasPathSum(root.left, targetSum) or self.hasPathSum(root.right, targetSum)