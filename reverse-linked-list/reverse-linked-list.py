# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def reverseList(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        
        # interation
        # prev = None
        # while head is not None:
        #     cur = head
        #     head = head.next
        #     cur.next = prev
        #     prev = cur
        # return prev
        
        # recursion
        prev = None
        
        
        def helper(node, prev):
            if node is None:
                return prev
            n = node.next
            node.next = prev
            return helper(n, node)
        
        return helper(head, prev)
        