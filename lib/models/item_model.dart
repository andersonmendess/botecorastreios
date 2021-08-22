import 'package:correiostracking/trackinfo_model.dart';

class ItemModel {
  late String title;
  late String code;
  late List<TrackInfoModel> info;

  ItemModel({
    required this.title,
    required this.code,
    required this.info,
  });

  ItemModel.fromMap(Map<String, dynamic> map) {
    title = map['title'];
    code = map['code'];
    info = [];
  }

  toMap() => {"title": title, "code": code};
}
