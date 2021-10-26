from collections import defaultdict
class Solution:
    def groupAnagrams(self, strs: List[str]) -> List[List[str]]:
        # catagorize by sorted string
        d = defaultdict(list)
        for s in strs:
            d[tuple(sorted(s))].append(s)
        return d.values()