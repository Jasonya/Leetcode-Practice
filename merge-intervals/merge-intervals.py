class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
#         for i in range(len(intervals)):
#             intervals.sort(key=lambda x: x[0])
#             merge = []
#             for inter in intervals:
#                 if not merge or merge[-1][1] < inter[0]:
#                     # no overlap or in the initial condition
#                     merge.append(inter)
#                 else:
#                     merge[-1][1] = max(merge[-1][1], inter[1])
#         return merge
    
 

        intervals.sort(key=lambda x: x[0])

        merged = []
        for interval in intervals:
            # if the list of merged intervals is empty or if the current
            # interval does not overlap with the previous, simply append it.
            if not merged or merged[-1][1] < interval[0]:
                merged.append(interval)
            else:
            # otherwise, there is overlap, so we merge the current and previous
            # intervals.
                merged[-1][1] = max(merged[-1][1], interval[1])

        return merged