# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def preorderTraversal(self, root: TreeNode) -> List[int]:
        if root is None:
            return []
        res = []
        stack = [root]
        while len(stack) != 0:
            node = stack.pop()
            res.append(node.val)
            
            # pop the last element, so the sequence shall be right -> left
            if node.right:
                stack.append(node.right)
            if node.left:
                stack.append(node.left)

        return res
        