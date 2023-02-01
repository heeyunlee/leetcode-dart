int numIslands(List<List<String>> grid) {
  int numOfIslands = 0;
  final r = grid.length;
  final c = grid[0].length;

  for (int i = 0; i < r; i++) {
    for (int j = 0; j < c; j++) {
      if (grid[i][j] == '1') {
        _dfs(grid, i, j);
        numOfIslands++;
      }
    }
  }

  return numOfIslands;
}

void _dfs(List<List<String>> grid, int i, int j) {
  if (i < 0 ||
      j < 0 ||
      i >= grid.length ||
      j >= grid[0].length ||
      grid[i][j] != '1') {
    return;
  }

  grid[i][j] = '0';

  _dfs(grid, i + 1, j);
  _dfs(grid, i - 1, j);
  _dfs(grid, i, j + 1);
  _dfs(grid, i, j - 1);
}
