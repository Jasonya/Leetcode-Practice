# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def inorderTraversal(self, root: TreeNode) -> List[int]:
        # recursion
        # ans = []
        # def inorder(root):
        #     if root == None:
        #         return None
        #     if root.left != None:
        #         inorder(root.left)
        #     ans.append(root.val)
        #     if root.right != None:
        #         inorder(root.right)
        # inorder(root)
        # return ans
        
        # iteration
        stack, ans = [], []
        while True:
            while root:
                # find the left subtree
                stack.append(root)
                root = root.left
            if not stack:
                return ans
            root = stack.pop()
            ans.append(root.val)
            root = root.right
 
            