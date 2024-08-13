class UpdateStatusBody {
  String? token;
  int? orderId;
  String? status;
  String? otp;
  String? processingTime;
  String method = 'put';
  String? reason;
  int? vendorId;

  UpdateStatusBody({this.token, this.orderId, this.status, this.otp, this.reason, this.processingTime, this.vendorId});

  UpdateStatusBody.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    orderId = json['order_id'];
    status = json['status'];
    otp = json['otp'];
    processingTime = json['processing_time'];
    method = json['_method']; // This line should assign the method variable
    reason = json['reason'];
    vendorId = json['vendor_id'];
  }

  Map<String, String> toJson() {
    final Map<String, String> data = <String, String>{};
    data['token'] = token ?? '';
    data['order_id'] = orderId?.toString() ?? ''; // Convert orderId to String
    data['status'] = status ?? '';
    data['otp'] = otp ?? '';
    data['vendor_id'] = vendorId?.toString() ?? ''; // Convert vendorId to String
    data['processing_time'] = processingTime ?? '';
    data['_method'] = method;
    if (reason != null && reason!.isNotEmpty) {
      data['reason'] = reason!;
    }
    return data;
  }
}