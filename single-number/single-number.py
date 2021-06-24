class Solution(object):
    from collections import defaultdict
    def singleNumber(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
#         # set
#         total = sum(nums)
#         rn = total - sum(set(nums))
#         return  total - rn * 2
        
#         # hashtable
#         hast_table = defaultdict(int)
#         for num in nums:
#             hast_table[num] += 1
#         for num in hash_table:
#             if hash_table[num] == 1:
#                 return num
        
        # bit XOR
        a = 0
        for i in nums:
            a ^= i
        return a
            
        