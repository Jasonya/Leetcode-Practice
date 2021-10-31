# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def swapPairs(self, head: ListNode) -> ListNode:
        if not head or not head.next:
            return head
        # iteration
        dummy = ListNode(0)
        prev = dummy
        dummy.next = head
        while head and head.next:
            node = head.next
            head.next = node.next
            node.next = head
            
            prev.next = node
            prev = head
            head = head.next
        return dummy.next
        # recursion

        # second = head.next
        # first = head
        # first.next = self.swapPairs(second.next)
        # second.next = first
        # return second
        