# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def pathSum(self, root: TreeNode, targetSum: int) -> List[List[int]]:
        if root is None:
            return []
        res = []
        def dfs(node, target, path):
            path.append(node.val)
            if node.left is None and node.right is None:
                if node.val == target:
                    res.append(path.copy())
            if node.left:
                dfs(node.left, target-node.val, path)
            if node.right:
                dfs(node.right, target-node.val, path)
            path.pop()
        dfs(root, targetSum, [])
        return res
        