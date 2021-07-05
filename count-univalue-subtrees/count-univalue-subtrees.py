# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def countUnivalSubtrees(self, root: TreeNode) -> int:
        if root is None:
            return 0
        res = [0]
        def dfs(node):
            if node.left is None and node.right is None:
                res[0] +=1 # leaf is always uni
                return True
            isunival = True
            if node.left is not None:
                is_left_unival = dfs(node.left)
                if not is_left_unival or node.val != node.left.val:
                    isunival = False
            if node.right is not None:
                is_right_unival = dfs(node.right)
                if not is_right_unival or node.val != node.right.val:
                    isunival = False
            if isunival:
                res[0] += 1
            return isunival
        dfs(root)
        return res[0]
        