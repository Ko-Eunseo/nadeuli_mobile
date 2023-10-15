import 'package:dio/dio.dart';
import 'package:nadeuli_mobile/utils/getUrl.dart';

var dio = Dio();

Future<Map<String, dynamic>?> getTourInfo({
  String? cat2,
  String? areaCode,
}) async {
  String service = '/areaBasedList1';

  try {
    Map<String, dynamic> queryParams = {};

    if (cat2 != null) {
      queryParams['cat2'] = cat2;
    }
    if (areaCode != null) {
      queryParams['areaCode'] = areaCode;
    }
    var url = getUrl(service: service, query: queryParams);
    var res = await dio.get(url);
    return res.data;
  } catch (e) {
    print('Error 발생: $e');
    return null;
  }
}
