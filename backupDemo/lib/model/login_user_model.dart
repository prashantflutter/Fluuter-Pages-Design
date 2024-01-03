class LoginUserModel {
  Data? data;
  int? status;
  String? message;

  LoginUserModel({this.data, this.status, this.message});

  LoginUserModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? id;
  String? name;
  String? userName;
  String? email;
  String? phoneNo;
  String? city;

  Data(
      {this.id, this.name, this.userName, this.email, this.phoneNo, this.city});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userName = json['user_name'];
    email = json['email'];
    phoneNo = json['phone_no'];
    city = json['city'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['user_name'] = this.userName;
    data['email'] = this.email;
    data['phone_no'] = this.phoneNo;
    data['city'] = this.city;
    return data;
  }
}