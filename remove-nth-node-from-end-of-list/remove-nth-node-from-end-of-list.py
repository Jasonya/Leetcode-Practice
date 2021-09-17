# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def removeNthFromEnd(self, head: Optional[ListNode], n: int) -> Optional[ListNode]:
        if head.next == None:
            return None
        dummy = ListNode(0)
        dummy.next = head
        cur = head
        len = 0
        # find the length of the linkedlist
        while cur:
            len += 1
            cur = cur.next
        if n == len:
            return dummy.next.next    
        
        # find the node before the target
        while len-n-1 > 0:
            head = head.next
            len -= 1
        head.next = head.next.next

         
        return dummy.next
            
            