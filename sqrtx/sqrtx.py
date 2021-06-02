class Solution(object):
    def mySqrt(self, x):
        """
        :type x: int
        :rtype: int
        """
        # binary search
        left = 1
        right = x+1
        
        while right > left:
            mid = left + (right-left)//2
            if mid * mid > x:
                right = mid 
            elif mid * mid == x:
                return mid
            else:
                left = mid + 1
        return left-1
    
        # bf
        # if x <= 1:
        #     return x
        # for i in range(1,x):
        #     if i*i>x:
        #         return i-1
        # return -1
        
        # Newton method
        # num = x
        # while num * num > x:
        #     num = (num+x/num) / 2
        # return num