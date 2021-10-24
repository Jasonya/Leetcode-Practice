class Solution:
    def eraseOverlapIntervals(self, intervals: List[List[int]]) -> int:
        intervals.sort()
        ans = 0
        now = intervals[0][1]
        for interv in intervals[1:]:
            if interv[0] < now:
                now = min(now, interv[1])
                ans += 1
            else:
                now = interv[1]
        return ans