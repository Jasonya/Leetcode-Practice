class Solution:
    def findRepeatedDnaSequences(self, s: str) -> List[str]:
        L, R = 10, len(s)
        ans = set()
        seen = set()
        for i in range(R-L+1):
            if s[i:i+10] in seen:
                ans.add(s[i:i+10])
            seen.add(s[i:i+10])
        return ans
            