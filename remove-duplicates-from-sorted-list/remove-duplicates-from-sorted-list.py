# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def deleteDuplicates(self, head: Optional[ListNode]) -> Optional[ListNode]:
        if not head:
            return head
        cur = head.next
        prev = head
        while cur:
            if cur.val == prev.val:
                cur = cur.next
                prev.next = cur
            else:
                cur, prev = cur.next, prev.next
        return head
            
        