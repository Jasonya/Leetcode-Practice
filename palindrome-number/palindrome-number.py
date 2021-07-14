class Solution:
    def isPalindrome(self, x: int) -> bool:
        if x < 0:
            return False
        y = x
        res = 0
        while y > 0:
            res =res * 10 + y %10
            y //= 10

        return x == res
        