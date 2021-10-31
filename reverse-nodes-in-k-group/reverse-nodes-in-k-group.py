# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseKGroup(self, head: Optional[ListNode], k: int) -> Optional[ListNode]:
        
        count = 0
        ptr = head
        while count < k and ptr:
            ptr = ptr.next
            count +=1
        if count == k:
            # traversal to k node, then reverse
            reverseHead = self.reverseLinkedList(head,k)
            head.next = self.reverseKGroup(ptr, k)
            return reverseHead
        return head
    
    def reverseLinkedList(self, head, k):
        new_head, ptr = None, head
        while k:

            # reverse two nodes
            next_node = ptr.next
            ptr.next = new_head
            new_head, ptr = ptr, next_node
            k -=1
        return new_head
            

            