# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    dummy = TreeNode(None)
    def flatten(self, root: TreeNode) -> None:
        """
        Do not return anything, modify root in-place instead.
        """
        ans = self.dummy
        self.MFS(root)
    
    def MFS(self,root):
        if not root:
            return
        # print(root.val)
        self.dummy.left = None
        self.dummy.right = root
        self.dummy = root
        l, r = root.left, root.right
        self.MFS(l)
        self.MFS(r)
            