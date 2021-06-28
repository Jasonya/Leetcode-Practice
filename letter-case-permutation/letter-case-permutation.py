class Solution(object):
    def letterCasePermutation(self, s):
        """
        :type s: str
        :rtype: List[str]
        """
        res = []
        def helper(s, i, cur_str):
            if i == len(s):
                res.append(cur_str)
            else:
                if s[i].isalpha():
                    helper(s, i+1, cur_str + s[i].lower())
                    helper(s, i+1, cur_str + s[i].upper())
                else:
                    helper(s, i+1, cur_str + s[i])
        helper(s, 0, '')
        return res