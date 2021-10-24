class Solution:
    def searchMatrix(self, matrix: List[List[int]], target: int) -> bool:
        # start from the upper right
        row = 0
        col = len(matrix[0]) -1
        while row < len(matrix) and col >= 0:
            if target == matrix[row][col]:
                return True
            elif target > matrix[row][col]:
                
                row += 1
            else:
                col -=1
        return False