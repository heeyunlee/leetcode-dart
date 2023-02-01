List<String> subdomainVisitCounter(List<String> cpdomains) {
  Map<String, int> map = {};

  for (String cpdomain in cpdomains) {
    int n = int.parse(cpdomain.split(' ')[0]);
    String domain = cpdomain.split(' ')[1];

    List<String> domainSplit = domain.split('.');

    for (int i = 0; i < domainSplit.length; i++) {
      final key = domainSplit.sublist(i).join('.');

      if (map.keys.contains(key)) {
        map[key] = map[key]! + n;
      } else {
        map[key] = n;
      }
    }
  }

  return map.entries.map((e) => '${e.value} ${e.key}').toList();
}
