
class TodoModel {
  String? title;
  String? des;

  TodoModel({this.title, this.des});

  TodoModel.fromJson(Map<String, dynamic> json) {
    title = json["title"];
    des = json["des"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["title"] = title;
    _data["des"] = des;
    return _data;
  }
}
