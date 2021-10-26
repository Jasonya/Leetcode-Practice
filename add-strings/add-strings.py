class Solution:
    def addStrings(self, num1: str, num2: str) -> str:
        res = ''
        add = 0
        m, n = len(num1), len(num2)
        if n > m:
            num1 = '0' * (n-m) + num1
            n, m = m, n
        else:
            num2 = '0' * (m-n) + num2
        for i in range(m-1, -1, -1):
            s = int(num1[i]) + int(num2[i]) + add               
            if s >= 10:
                add = 1
                s -= 10
            else:
                add = 0
            res = str(s) + res
        if add:
            res = '1' + res
        return res
        