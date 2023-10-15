import 'package:nadeuli_mobile/variables/config.dart';

Map<String, String> normal = {
  "id": basicEndpoint,
  "name": '가족',
};

Map<String, String> kid = {
  "id": barrierFree,
  "name": '아이',
};

Map<String, String> adult = {
  "id": barrierFree,
  "name": '어른',
};

Map<String, String> disabled = {
  "id": barrierFree,
  "name": '장애',
};

List<Map<String, String>> mates = [
  normal,
  kid,
  adult,
  disabled,
];
