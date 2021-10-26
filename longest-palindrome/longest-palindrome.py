from collections import defaultdict
class Solution:
    def longestPalindrome(self, s: str) -> int:
        d = defaultdict(int)
        ans = 0
        for n in s :
            d[n] += 1
        for _, v in d.items():
            if v >= 2:
                ans += v//2 *2 
        if ans < len(s):
            ans += 1
        return ans
        