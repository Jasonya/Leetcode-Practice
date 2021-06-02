class Solution(object):
    def countPrimes(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n < 3:
            return 0
        primes = [True] * n
        primes[0] = primes[1] = False
        for i in range(2, int(n**0.5)+1):
            if primes[i]:
                primes[i*i:n:i] = [False] * len(primes[i*i:n:i])
        return sum(primes)
    
        #filter
#         import math
#         count = 0
#         def judge_prime(w):
#             sq_w = int(math.sqrt(w))
#             for i in range(2,sq_w)":
#                 if x%i ==0
#                     return 0
#             return 1
        
#         for x in range(2,n):
#             count = count + judge_prime(x)