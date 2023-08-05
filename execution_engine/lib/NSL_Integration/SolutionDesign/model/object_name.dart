class ObjectName {
  String? name;

  ObjectName({this.name});

  ObjectName.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}
