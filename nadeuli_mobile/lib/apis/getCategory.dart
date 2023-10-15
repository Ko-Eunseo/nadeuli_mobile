import 'package:dio/dio.dart';
import 'package:nadeuli_mobile/utils/getUrl.dart';

var dio = Dio();

Future<Map<String, dynamic>?> getCategory() async {
  String service = '/categoryCode1';
  Map<String, String> param = {
    "cat1": "C01",
  };

  try {
    var url = getUrl(service: service, query: param);
    var res = await dio.get(url);
    return res.data;
  } catch (e) {
    print('Error 발생: $e');
    return null;
  }
}
