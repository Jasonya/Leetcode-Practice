# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseList(self, head: ListNode) -> ListNode:
        # iteration
#         if not head:
#             return head
#         node = head
#         prev = None
#         while node:
#             cur = node.next
#             node.next = prev
#             prev = node
#             node = cur
            
#         return prev
    
    
        # recursion
        if not head or not head.next:
            return head
        node = self.reverseList(head.next)
        head.next.next = head
        head.next = None

        return node
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        

            
            
            