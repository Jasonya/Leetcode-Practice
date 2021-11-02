class Solution:
    def findTheWinner(self, n: int, k: int) -> int:
        ppl = [i for i in range(1,n+1)]
        idx = 0
        while ppl:
            idx = (idx+k-1) % len(ppl)
            res = ppl.pop(idx)
        return res