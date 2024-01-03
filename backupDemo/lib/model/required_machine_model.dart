class RequiredMachineModel {
  String? pId;
  String? pName;

  RequiredMachineModel({this.pId, this.pName});

  RequiredMachineModel.fromJson(Map<String, dynamic> json) {
    pId = json['p_id'];
    pName = json['p_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['p_id'] = this.pId;
    data['p_name'] = this.pName;
    return data;
  }
}