List<List<int>> floodFill(
  List<List<int>> image,
  int sr,
  int sc,
  int newColor,
) {
  int color = image[sr][sc];

  if (color == newColor) return image;

  _dfs(image, color, sr, sc, newColor);

  return image;
}

void _dfs(List<List<int>> image, int color, int r, int c, int newColor) {
  if (r < 0 || c < 0 || r >= image.length || c >= image[0].length) return;

  if (color == image[r][c]) {
    image[r][c] = newColor;

    _dfs(image, color, r + 1, c, newColor);
    _dfs(image, color, r - 1, c, newColor);
    _dfs(image, color, r, c + 1, newColor);
    _dfs(image, color, r, c - 1, newColor);
  }
}
