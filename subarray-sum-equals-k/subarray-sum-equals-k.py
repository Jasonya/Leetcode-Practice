from collections import defaultdict
class Solution:
    def subarraySum(self, nums: List[int], k: int) -> int:
        n = len(nums)
        d = defaultdict(int)
        d[0] = 1
        s = 0
        res = 0
        for i in range(n):
            s += nums[i]
            if s-k in d:
                res += d[s-k]
            d[s] += 1
        return res