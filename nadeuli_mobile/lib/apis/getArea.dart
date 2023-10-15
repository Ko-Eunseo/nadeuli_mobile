import 'package:dio/dio.dart';
import 'package:nadeuli_mobile/utils/getUrl.dart';

var dio = Dio();

Future<Map<String, dynamic>?> getArea() async {
  String service = '/areaCode1';
  try {
    var url = getUrl(service: service);
    var res = await dio.get(url);
    return res.data;
  } catch (e) {
    print('Error 발생: $e');
    return null;
  }
}
