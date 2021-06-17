# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def removeNthFromEnd(self, head, n):
        """
        :type head: ListNode
        :type n: int
        :rtype: ListNode
        """
        # b-f
        length = 0
        dummy = ListNode(None)
        dummy.next = head
        cur = head
        while cur is not None:
            length += 1
            cur = cur.next
        length -= n
        cur = dummy
        while length > 0:
            cur = cur.next
            length -= 1
        cur.next = cur.next.next
        return dummy.next