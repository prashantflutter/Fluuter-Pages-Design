class EnquiryResult {
  String? esId;
  String? esName;

  EnquiryResult({this.esId, this.esName});

  EnquiryResult.fromJson(Map<String, dynamic> json) {
    esId = json['es_id'];
    esName = json['es_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['es_id'] = this.esId;
    data['es_name'] = this.esName;
    return data;
  }
}