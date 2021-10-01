class Solution:
    def containsDuplicate(self, nums: List[int]) -> bool:
        return len(set(nums)) != len(nums)
    
                
        
        # hash table
        # dict = {}
        # for i in range(len(nums)):
        #     dict
            