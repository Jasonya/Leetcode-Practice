import heapq
# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution(object):
    def mergeKLists(self, lists):
        """
        :type lists: List[ListNode]
        :rtype: ListNode
        """

        dummy = ListNode(0)
        cur = dummy
        heap = []
        for list in lists:
            if list:
                heapq.heappush(heap, (list.val, list))
        while heap:
            smallest = heapq.heappop(heap)[1]
            cur.next = smallest
            cur = cur.next
            if smallest.next:
                heapq.heappush(heap, (smallest.next.val, smallest.next))
        return dummy.next
