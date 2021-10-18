# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
from collections import deque
class Solution:
    def findTarget(self, root: Optional[TreeNode], k: int) -> bool:
        # bfs
        if root is None:
            return False
        que = collections.deque()
        que.append(root)
        res = set()
        while que:
            size = len(que)
            for _ in range(size):
                node = que.popleft()
                if not node:
                    continue
                if k-node.val in res:
                    return True
                res.add(node.val)
                que.append(node.left)
                que.append(node.right)

        return False
                
                
        