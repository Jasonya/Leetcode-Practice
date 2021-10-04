import collections
class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        # hash
        res = []
        c1 = collections.Counter(nums1)
        c2 = collections.Counter(nums2)
        for k, v in c1.items():
            if k in c2:
                res += [k]* min(v, c2[k])
        return res
        
        