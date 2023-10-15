import 'package:flutter_dotenv/flutter_dotenv.dart';

final String url = dotenv.env['BASIC_URL'].toString();
final String basicEndpoint = dotenv.env['END_POINT'].toString();
final String barrierFree = dotenv.env['BARRIER_FREE_ENDPOINT'].toString();
final String key = dotenv.env['ENCODING'].toString();

final Map<String, dynamic> BASIC_PARAMS = {
  "numOfRows": 10,
  "MobileOS": "ETC",
  "MobileApp": "nadeuli",
  "_type": "json",
  "serviceKey": key,
};
