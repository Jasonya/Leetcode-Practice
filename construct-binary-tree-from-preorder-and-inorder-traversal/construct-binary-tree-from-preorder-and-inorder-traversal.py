# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def buildTree(self, preorder: List[int], inorder: List[int]) -> TreeNode:
        # put the inorder traversal sequence in the index
        map ={}
        for i in range(len(inorder)):
            map[inorder[i]] = i
        def helper(p, startp, endp, I, startI, endI):
            if startp > endp:
                return None
            rootnode = TreeNode(p[startp])
            rootindex = map[p[startp]] # get index of rootnode in I
            numleft = rootindex-startI
            rootnode.left = helper(p, startp+1, startp+numleft, 
                                   I, startI, rootindex-1)
            rootnode.right = helper(p, startp+numleft+1, endp,
                                   I, rootindex+1, endI)
            return rootnode
        
        return helper(preorder, 0, len(preorder)-1, inorder, 0, len(inorder)-1)