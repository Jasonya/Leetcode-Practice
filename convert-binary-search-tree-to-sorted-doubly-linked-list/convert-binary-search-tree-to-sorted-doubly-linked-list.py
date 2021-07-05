"""
# Definition for a Node.
class Node:
    def __init__(self, val, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right
"""

class Solution:
    def treeToDoublyList(self, root: 'Node') -> 'Node':
        if root is None:
            return
        dummy = TreeNode(None)
        pred = [dummy]
        def dfs(node):
            # inorder traversal -> the sorted list
            if node.left is not None:
                dfs(node.left)
            # do something
            node.left = pred[0]
            pred[0].right = node
            pred[0] = node
            if node.right is not None:
                dfs(node.right)
        dfs(root)
        
        # connect head and tail
        pred[0].right = dummy.right
        dummy.right.left = pred[0]
        return dummy.right
            