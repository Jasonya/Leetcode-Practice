class Solution:
    def longestPalindrome(self, s: str) -> str:
        # if len(set(s)) == 1:
        #     return s
        # n = len(s)
        # st, en, maxL = 0, 0, 0
        # dp = [[0] * n for _ in range(n)]
        # for i in range(n):
        #     for j in range(i):
        #         # when i == j, palindrom
        #         # when j = i+1, len = 2, s[i] = s[j]
        #         # when j > i+1, len>2
        #         dp[j][i] = (s[i] == s[j]) & ((i-j<2) | dp[j+1][i-1])
        #         # update the max length of the string
        #         if dp[j][i] and maxL < i-j+1:
        #             maxL = i-j+1
        #             st = j
        #             en = i
        #     dp[i][i] = 1
        # return s[st:en+1]
    
        longest = '' if not s else s[0]
        max_len = 1
        size = len(s)
        dp=[[False]*size for _ in range(size)]
        for start in range(size-1,-1,-1):
            dp[start][start]=True
            for end in range(start+1,size):
                if s[start]==s[end]:
                    if end - start == 1 or dp[start+1][end-1]:
                        dp[start][end] = True
                        if max_len < end - start + 1:
                            max_len = end - start + 1
                            longest = s[start: end+ 1]
        return longest