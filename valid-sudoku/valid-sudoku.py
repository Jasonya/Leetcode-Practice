class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:

        return self.isValidRow(board) and self.isValidCol(board) and self.isValidCube(board)
    
    
    def isValidRow(self, board):
        n = len(board)
        for r in range(n):
            row = [x for x in board[r] if x != '.']
            if len(set(row)) != len(row):
                return False
        return True
    
    def isValidCol(self, board):
        n = len(board)
        for c in range(n):
            col = [board[r][c] for r in range(n) if board[r][c] != '.']
            if len(set(col)) != len(col):
                return False
        return True
    
    def isValidCube(self, board):
        for row in range(0,7,3):
            for col in range(0,7,3):
                cube = []
                for i in range(3):
                    for j in range(3):
                        if board[row+i][col+j] != '.':
                            cube.append(board[row+i][col+j])
                if len(set(cube)) != len(cube):
                    return False
        return True
                        