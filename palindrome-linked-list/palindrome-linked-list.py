# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def isPalindrome(self, head: Optional[ListNode]) -> bool:
        if head is None:
            return True
        
        # find the mid point of the linked list
        fast = slow = head
        while fast.next and fast.next.next:
            slow, fast = slow.next, fast.next.next
            
        # reverse the second head of the linked list
        node = slow.next
        slow.next = None
        prev = None
        while node:
            cur = node.next
            node.next = prev
            prev = node
            node = cur
            
        # check the first head and second head of the linked list
        res = True
        while res and prev is not None:
            if head.val != prev.val:
                res = False
            head, prev = head.next, prev.next
        return res
            
        