class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        # if len(digits) == 0:
        #     return []
#         res = []
        # dig = {'2':'abc', '3':'def', '4':'ghi', '5':'jki', '6':'mno',
        #       '7':'pqrs', '8':'tuv', '9':'wxyz'}
        
#         def helper(digits, i, cur):
#             if i == len(digits):
#                 res.append(''.join(cur))
#             else:
#                 for letter in dig[digits[i]]:
#                     cur.append(letter)
#                     helper(digits, i+1, cur)
#                     cur.pop()
#         helper(digits, 0, [])
#         return res
        
        # interation
        if digits == "": return []
        d = {'2' : "abc", '3' : "def", '4' : "ghi", '5' : "jkl", '6' : "mno", '7' :         "pqrs", '8' : "tuv", '9' : "wxyz"}
        res = ['']
        for e in digits:
            res = [w + c for c in d[e] for w in res]
        return res

        