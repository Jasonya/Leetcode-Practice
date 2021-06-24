class MovingAverage(object):
    from collections import deque
    def __init__(self, size):
        """
        Initialize your data structure here.
        :type size: int
        """
        self.queue = deque()
        self.size = size
        self.total = 0.0
        
        

    def next(self, val):
        """
        :type val: int
        :rtype: float
        """
        if len(self.queue) == self.size:
            self.total -= self.queue.popleft()
        self.total += val
        self.queue.append(val)
        return self.total / len(self.queue)
            


# Your MovingAverage object will be instantiated and called as such:
# obj = MovingAverage(size)
# param_1 = obj.next(val)