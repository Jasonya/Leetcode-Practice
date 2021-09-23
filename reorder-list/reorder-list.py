# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reorderList(self, head: Optional[ListNode]) -> None:
        """
        Do not return anything, modify head in-place instead.
        """
        # find the mid point
        fast = slow = head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            
        # reverse the second part of linked list
        prev, cur = None, slow
        while cur:
            temp = cur.next
            cur.next = prev
            prev, cur = cur, temp
            
        # merge two list
        first, second = head, prev
        while second.next:
            temp = first.next
            first.next = second
            first = temp
            
            temp = second.next
            second.next = first
            second = temp
        
        