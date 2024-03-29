class Solution:
    def multiply(self, num1: str, num2: str) -> str:
        if num1 == '0' or num2 == '0':
            return '0'
        ans = 0
        for i, n1 in enumerate(num2[::-1]):
            pre, cur = 0, 0
            for j, n2 in enumerate(num1[::-1]):
                multi = (ord(n1)-ord('0')) * (ord(n2)-ord('0'))
                first, second = multi//10, multi%10
                cur += (second+pre) * (10**j)
                pre = first
            cur += pre*(10**len(num1))
            ans += cur*(10**i)
        return str(ans)
            
            