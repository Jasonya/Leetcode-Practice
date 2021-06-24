class Solution(object):
    from collections import defaultdict
    def isAnagram(self, s, t):
        """
        :type s: str
        :type t: str
        :rtype: bool
        """
        # set
        dic = defaultdict(int)
        for char in s:
            dic[char] +=1
        
        for char in t:
            dic[char] -=1
        
        for char in dic:
            if dic[char] != 0:
                return False
        return True
            
        