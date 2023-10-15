import 'package:nadeuli_mobile/utils/getQueryString.dart';
import 'package:nadeuli_mobile/variables/config.dart';

String basicQuery = getQueryString(BASIC_PARAMS);

String getUrl({
  required String service,
  String? endpoint,
  Map<String, dynamic>? query,
}) {
  String basicUrl = endpoint == null ? '$url$basicEndpoint' : '$url$endpoint';
  if (query != null) {
    String queryUrl = getQueryString(query);
    return '$basicUrl$service?$basicQuery&$queryUrl';
  }
  return '$basicUrl$service?$basicQuery';
}
