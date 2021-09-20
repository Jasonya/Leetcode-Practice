# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def sortedListToBST(self, head: ListNode) -> TreeNode:
        # for example 2
        if head is None:
            return None
        # for example 3
        if head.next is None:
            return TreeNode(head.val)
        
        # split the Linked List into left, root, right
        # need to find the mid point of the linked list
        slow, fast = head, head.next.next
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            
        rootVal = slow.next.val
        right = slow.next.next
        slow.next = None
        
        return TreeNode(val=rootVal, left=self.sortedListToBST(head),
                       right=self.sortedListToBST(right))