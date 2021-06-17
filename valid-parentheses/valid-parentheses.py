class Solution(object):
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        stack = []
        for char in s :
            if char in ['(', '[','{']:
                stack.append(char)
            else:
                if len(stack) == 0:
                    return False
                if char == '}'and stack.pop() != '{':
                    return False
                elif char == ']' and stack.pop() != '[':
                    return False
                elif char == ')' and stack.pop() != '(':
                    return False
        return len(stack) ==0