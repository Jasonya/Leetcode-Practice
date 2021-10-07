# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeElements(self, head: Optional[ListNode], val: int) -> Optional[ListNode]:
        if not head:
            return head
        
        dummy = ListNode(0)
        dummy.next = head
        prev = dummy
        
        while head:
            if head.val == val:
                head = head.next
                prev.next = head

            else:
                head = head.next
                prev = prev.next      
        return dummy.next
            
        