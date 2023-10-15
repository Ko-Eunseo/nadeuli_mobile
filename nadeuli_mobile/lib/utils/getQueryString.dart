String getQueryString(Map<String, dynamic> params) {
  String queryString =
      params.entries.map((entry) => '${entry.key}=${entry.value}').join('&');
  return queryString;
}
