class Solution(object):
    def insert(self, intervals, newInterval):
        """
        :type intervals: List[List[int]]
        :type newInterval: List[int]
        :rtype: List[List[int]]
        """
        new_start, new_end = newInterval
        idx, n = 0, len(intervals)
        output = []
        
        # attach all the intervals starting befroe new interval
        while idx < n and new_start > intervals[idx][0]:
            output.append(intervals[idx])
            idx += 1
        
        # add new interval
        # if there is not overlap, just add the interval
        if not output or output[-1][1] < new_start:
            output.append(newInterval)
            
        # if there is an overlap, merge with the last interval
        else:
            output[-1][1] = max(output[-1][1], new_end)
            
        # add next intervals, merge with newintercal if needed,
        while idx < n:
            start, end = intervals[idx]
            idx +=1
            if output[-1][1] >= start:
                output[-1][1] = max(output[-1][1], end)
            else:
                output.append([start,end])
        return output
            