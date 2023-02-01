String reverseWordsInAString(String s) {
  final words = s.split(' ');
  List<String> newWords = [];

  for (String word in words) {
    List<String> wordSplit = word.split('');
    int l = 0, r = wordSplit.length - 1;

    while (l < r) {
      final temp = wordSplit[l];
      wordSplit[l] = wordSplit[r];
      wordSplit[r] = temp;
      l++;
      r--;
    }

    newWords.add(wordSplit.join());
  }

  return newWords.join(' ');
}
