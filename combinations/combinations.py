class Solution:
    def combine(self, n: int, k: int) -> List[List[int]]:
#         res = []
        
#         def dfs(n, i, k, cur, res):
#             if len(cur) == k:
#                 res.append(cur.copy())
#                 return
#             if i == n+1: #base case
#                 return
#             dfs(n, i+1, k, cur, res) #exclude i
#             # include i
#             cur.append(i)
#             dfs(n, i+1, k, cur, res)
#             cur.pop()
#         dfs(n, 1, k, [], res)
#         return res
            
     
        # method 2
        
#         res = []
#         self.helper(range(1, n+1), k, res, [])
#         return res
        
#     def helper(self, array, k, res, cur):
#         if k> len(array):
#             return
#         if k == 0:
#             res.append(cur)
#         else:
#             # take 
#             self.helper(array[1:], k-1, res, cur+[array[0]])
#             # not take
#             self.helper(array[1:], k, res, cur)\

        # method 3
        res = []
        self.helper(range(1, n+1), k, res, [])
        return res
    
    def helper(self, array, k, res, cur):
        if k > len(array):
            return
        if k == 0:
            res.append(cur)
        else:
            for i in range(len(array)):
                self.helper(array[i+1:], k-1, res, cur+[array[i]])