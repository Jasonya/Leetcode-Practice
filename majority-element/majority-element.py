from collections import Counter
class Solution:
    def majorityElement(self, nums: List[int]) -> int:
        dic = Counter(nums)
        return max(dic.keys(), key=dic.get)
