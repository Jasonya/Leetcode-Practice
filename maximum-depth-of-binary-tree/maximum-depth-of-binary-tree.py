# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        if root is None:
            # base case
            return 0

        return 1+ max(self.maxDepth(root.left), self.maxDepth(root.right))
    
    
#         stack = []
#         if root is not None:
#             stack.append((1, root))
        
#         depth = 0
#         while stack != []:
#             print(stack)
#             current_depth, root = stack.pop()
#             if root is not None:
#                 depth = max(depth, current_depth)
#                 stack.append((current_depth + 1, root.left))
#                 stack.append((current_depth + 1, root.right))
        
#         return depth