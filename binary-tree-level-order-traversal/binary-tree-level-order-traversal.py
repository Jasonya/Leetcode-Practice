# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import deque
class Solution:
    def levelOrder(self, root: TreeNode) -> List[List[int]]:
        # interation
        # if root is None:
        #     return root
        # res = []
        # queue = deque([root])
        # while len(queue) != 0:
        #     count = len(queue)
        #     temp = []
        #     for _ in range(count):
        #         n = queue.popleft()
        #         temp.append(n.val)
        #         if n.left is not None:
        #             queue.append(n.left)
        #         if n.right is not None:
        #             queue.append(n.right)
        #     res.append(temp)
        # return res
        
        # recursion
        levels = []
        if not root:
            return levels
        def helper(node, level):
            # initial the list
            if len(levels) == level:
                levels.append([])
            levels[level].append(node.val)
            
            # process
            if node.left:
                helper(node.left, level+1)
            if node.right:
                helper(node.right, level+1)
        helper(root, 0)
        return levels
                
            
        
        
        