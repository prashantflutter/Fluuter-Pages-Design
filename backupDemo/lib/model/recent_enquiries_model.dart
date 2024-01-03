class RecentEnquiriesModel {
  List<Data>? data;
  String? totalDraft;
  int? status;
  String? message;

  RecentEnquiriesModel({this.data, this.totalDraft, this.status, this.message});

  RecentEnquiriesModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    totalDraft = json['total_draft'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['total_draft'] = this.totalDraft;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

class Data {
  String? enquiryId;
  String? uniqueId;
  String? createdAt;

  Data({this.enquiryId, this.uniqueId, this.createdAt});

  Data.fromJson(Map<String, dynamic> json) {
    enquiryId = json['enquiry_id'];
    uniqueId = json['unique_id'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['enquiry_id'] = this.enquiryId;
    data['unique_id'] = this.uniqueId;
    data['created_at'] = this.createdAt;
    return data;
  }
}