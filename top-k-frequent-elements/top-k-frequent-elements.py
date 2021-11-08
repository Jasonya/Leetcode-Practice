from collections import Counter
class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        count = Counter(nums)
        unique = list(count.keys())
        
        def partition(left, right, pivot_index):
            pivot_feq = count[unique[pivot_index]]
            # move pivot to end
            unique[pivot_index], unique[right] = unique[right], unique[pivot_index]
            
            # move all less frequent elements to the left
            store_index = left
            for i in range(left, right):
                if count[unique[i]] < pivot_feq:
                    unique[store_index], unique[i] = unique[i], unique[store_index]
                    store_index += 1
            # move pivot to ites final place
            unique[right], unique[store_index] = unique[store_index], unique[right]
            return store_index
        
        def quickselect(left, right, k_smallest):
            if left == right:
                return
            
            pivot_index = random.randint(left, right)
            pivot_index = partition(left, right, pivot_index)
            
            if k_smallest == pivot_index:
                return
            elif k_smallest < pivot_index:
                quickselect(left, pivot_index-1, k_smallest)
            else:
                quickselect(pivot_index+1, right, k_smallest)
                
        n= len(unique)
        quickselect(0, n-1, n-k)
        return unique[n-k:]