class Solution:
    def increasingTriplet(self, nums: List[int]) -> bool:
        # bf
#         for i in range(len(nums)):
#             for j in range(i+1, len(nums)):
#                 for k in range(j+1, len(nums)):
#                     if nums[k]> nums[j] > nums[i]:
#                         return True

#         return False
    
        # linear scan
        fn = math.inf
        sn = math.inf
        for n in nums:
            if fn >= n:
                fn = n
            elif sn >= n:
                sn = n
            else:
                return True