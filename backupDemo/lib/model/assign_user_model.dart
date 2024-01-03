
class AssignUserResult {
  String? userId;
  String? name;

  AssignUserResult({this.userId, this.name});

  AssignUserResult.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    return data;
  }
}