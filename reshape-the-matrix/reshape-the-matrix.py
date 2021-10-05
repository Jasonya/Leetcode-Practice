class Solution:
    def matrixReshape(self, mat: List[List[int]], r: int, c: int) -> List[List[int]]:
        n, m = len(mat), len(mat[0])
        if r * c != n * m:
            # meaning the reshape is impossible
            return mat
        row = []
        col = []
        for i in range(n):
            for j in range(m):
                row.append(mat[i][j])
                if len(row) == c:
                    col.append(row)
                    row = []
        return col