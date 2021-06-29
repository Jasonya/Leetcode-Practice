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
        # dummy = prev = ListNode(None)
        # dummy.next = head
        # while head and head.next:
            # to make sure two node can be switched
            # swap
#             second = head.next
#             head.next = second.next
#             second.next = head
            
#             #update
#             prev.next = second
#             prev = head
#             head = head.next
#         return dummy.next
    
        # recursion

        second = head.next
        first = head
        first.next = self.swapPairs(second.next)
        second.next = first
        return second
        