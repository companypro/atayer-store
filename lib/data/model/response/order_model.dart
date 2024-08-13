import 'dart:convert';

class PaginatedOrderModel {
  int? totalSize;
  String? limit;
  String? offset;
  List<OrderModel>? orders;

  PaginatedOrderModel({this.totalSize, this.limit, this.offset, this.orders});

  PaginatedOrderModel.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'].toString();
    offset = json['offset'].toString();
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders!.add(OrderModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (orders != null) {
      data['orders'] = orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}

class OrderModel {
  int? id;
  double? orderAmount;
  double? couponDiscountAmount;
  String? couponDiscountTitle;
  String? paymentStatus;
  String? orderStatus;
  double? totalTaxAmount;
  String? paymentMethod;
  String? orderNote;
  String? orderType;
  String? createdAt;
  String? updatedAt;
  double? deliveryCharge;
  String? scheduleAt;
  String? otp;
  String? pending;
  String? accepted;
  String? confirmed;
  String? processing;
  String? handover;
  String? pickedUp;
  String? delivered;
  String? canceled;
  String? refundRequested;
  String? refunded;
  DeliveryAddress? deliveryAddress;
  int? scheduled;
  double? storeDiscountAmount;
  String? storeName;
  String? storeAddress;
  String? storePhone;
  String? storeLat;
  String? storeLng;
  String? storeLogo;
  int? itemCampaign;
  int? detailsCount;
  List<String>? orderAttachment;
  String? moduleType;
  bool? prescriptionOrder;
  Customer? customer;
  double? dmTips;
  int? processingTime;
  DeliveryMan? deliveryMan;
  bool? taxStatus;
  bool? cutlery;
  String? unavailableItemNote;
  String? deliveryInstruction;
  List<String>? orderProof;
  List<Payments>? payments;
  double? additionalCharge;
  bool? isGuest;
  double? flashAdminDiscountAmount;
  double? flashStoreDiscountAmount;

  OrderModel({
    this.id,
    this.orderAmount,
    this.couponDiscountAmount,
    this.couponDiscountTitle,
    this.paymentStatus,
    this.orderStatus,
    this.totalTaxAmount,
    this.paymentMethod,
    this.orderNote,
    this.orderType,
    this.createdAt,
    this.updatedAt,
    this.deliveryCharge,
    this.scheduleAt,
    this.otp,
    this.pending,
    this.accepted,
    this.confirmed,
    this.processing,
    this.handover,
    this.pickedUp,
    this.delivered,
    this.canceled,
    this.refundRequested,
    this.refunded,
    this.deliveryAddress,
    this.scheduled,
    this.storeDiscountAmount,
    this.storeName,
    this.storeAddress,
    this.storePhone,
    this.storeLat,
    this.storeLng,
    this.storeLogo,
    this.itemCampaign,
    this.detailsCount,
    this.prescriptionOrder,
    this.customer,
    this.dmTips,
    this.processingTime,
    this.deliveryMan,
    this.taxStatus,
    this.cutlery,
    this.unavailableItemNote,
    this.deliveryInstruction,
    this.orderProof,
    this.payments,
    this.additionalCharge,
    this.isGuest,
    this.flashAdminDiscountAmount,
    this.flashStoreDiscountAmount,
  });

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderAmount = json['order_amount'] != null ? double.tryParse(json['order_amount'].toString()) : null;
    couponDiscountAmount = json['coupon_discount_amount'] != null ? double.tryParse(json['coupon_discount_amount'].toString()) : null;
    couponDiscountTitle = json['coupon_discount_title'];
    paymentStatus = json['payment_status'];
    orderStatus = json['order_status'];
    totalTaxAmount = json['total_tax_amount'] != null ? double.tryParse(json['total_tax_amount'].toString()) : null;
    paymentMethod = json['payment_method'];
    orderNote = json['order_note'];
    orderType = json['order_type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deliveryCharge = json['delivery_charge'] != null ? double.tryParse(json['delivery_charge'].toString()) : null;
    scheduleAt = json['schedule_at'];
    otp = json['otp'];
    pending = json['pending'];
    accepted = json['accepted'];
    confirmed = json['confirmed'];
    processing = json['processing'];
    handover = json['handover'];
    pickedUp = json['picked_up'];
    delivered = json['delivered'];
    canceled = json['canceled'];
    refundRequested = json['refund_requested'];
    refunded = json['refunded'];

    // تابع بقية الحقول حسب الحاجة باستخدام double.tryParse

    // تحويل deliveryAddress إلى DeliveryAddress إذا كانت القيمة غير null
    if (json['delivery_address'] != null) {
      if (json['delivery_address'] is String) {
        deliveryAddress = DeliveryAddress.fromJson(jsonDecode(json['delivery_address']));
      } else if (json['delivery_address'] is Map<String, dynamic>) {
        deliveryAddress = DeliveryAddress.fromJson(json['delivery_address']);
      }
    }
    scheduled = json['scheduled'];
    storeDiscountAmount = json['store_discount_amount'] != null ? double.tryParse(json['store_discount_amount'].toString()) : null;
    storeName = json['store_name'];
    storeAddress = json['store_address'];
    storePhone = json['store_phone'];
    storeLat = json['store_lat'];
    storeLng = json['store_lng'];
    storeLogo = json['store_logo'];
    itemCampaign = json['item_campaign'];
    detailsCount = json['details_count'];

    // تحويل orderAttachment إلى List<String> إذا كانت القيمة غير null
    if (json['order_attachment'] != null) {
      orderAttachment = [];
      if (json['order_attachment'] is List) {
        json['order_attachment'].forEach((v) {
          orderAttachment!.add(v.toString());
        });
      } else {
        orderAttachment!.add(json['order_attachment'].toString());
      }
    }

    moduleType = json['module_type'];
    prescriptionOrder = json['prescription_order'] == 1 ? true : false;


    // تحويل customer إلى Customer إذا كانت القيمة غير null
    customer = json['customer'] != null ? Customer.fromJson(json['customer']) : null;

    dmTips = json['dm_tips'] != null ? double.tryParse(json['dm_tips'].toString()) : null;
    processingTime = json['processing_time'];

    // تحويل deliveryMan إلى DeliveryMan إذا كانت القيمة غير null
    deliveryMan = json['delivery_man'] != null ? DeliveryMan.fromJson(json['delivery_man']) : null;

    taxStatus = json['tax_status'] == 'included';
    cutlery = json['cutlery'] == 1 ? true : false;

    unavailableItemNote = json['unavailable_item_note'];
    deliveryInstruction = json['delivery_instruction'];

    // تحويل orderProof إلى List<String> إذا كانت القيمة غير null
    if (json['order_proof'] != null) {
      orderProof = [];
      if (json['order_proof'] is List) {
        json['order_proof'].forEach((v) {
          orderProof!.add(v.toString());
        });
      } else {
        orderProof!.add(json['order_proof'].toString());
      }
    }

    // تحويل payments إلى List<Payments> إذا كانت القيمة غير null
    if (json['payments'] != null) {
      payments = [];
      json['payments'].forEach((v) {
        payments!.add(Payments.fromJson(v));
      });
    }

    additionalCharge = json['additional_charge'] != null ? double.tryParse(json['additional_charge'].toString()) : null;
    isGuest = json['is_guest'] == 1 ? true : false;

    flashAdminDiscountAmount = json['flash_admin_discount_amount'] != null ? double.tryParse(json['flash_admin_discount_amount'].toString()) : null;
    flashStoreDiscountAmount = json['flash_store_discount_amount'] != null ? double.tryParse(json['flash_store_discount_amount'].toString()) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['order_amount'] = orderAmount;
    data['coupon_discount_amount'] = couponDiscountAmount;
    data['coupon_discount_title'] = couponDiscountTitle;
    data['payment_status'] = paymentStatus;
    data['order_status'] = orderStatus;
    data['total_tax_amount'] = totalTaxAmount;
    data['payment_method'] = paymentMethod;
    data['order_note'] = orderNote;
    data['order_type'] = orderType;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['delivery_charge'] = deliveryCharge;
    data['schedule_at'] = scheduleAt;
    data['otp'] = otp;
    data['pending'] = pending;
    data['accepted'] = accepted;
    data['confirmed'] = confirmed;
    data['processing'] = processing;
    data['handover'] = handover;
    data['picked_up'] = pickedUp;
    data['delivered'] = delivered;
    data['canceled'] = canceled;
    data['refund_requested'] = refundRequested;
    data['refunded'] = refunded;

    // تحويل deliveryAddress إلى Map<String, dynamic> إذا كانت القيمة غير null
    if (deliveryAddress != null) {
      data['delivery_address'] = deliveryAddress!.toJson();
    }

    data['scheduled'] = scheduled;
    data['store_discount_amount'] = storeDiscountAmount;
    data['store_name'] = storeName;
    data['store_address'] = storeAddress;
    data['store_phone'] = storePhone;
    data['store_lat'] = storeLat;
    data['store_lng'] = storeLng;
    data['store_logo'] = storeLogo;
    data['item_campaign'] = itemCampaign;
    data['details_count'] = detailsCount;

    // تحويل orderAttachment إلى List<String> إذا كانت القيمة غير null
    if (orderAttachment != null) {
      data['order_attachment'] = orderAttachment;
    }

    data['module_type'] = moduleType;
    data['prescription_order'] = prescriptionOrder;

    // تحويل customer إلى Map<String, dynamic> إذا كانت القيمة غير null
    if (customer != null) {
      data['customer'] = customer!.toJson();
    }

    data['dm_tips'] = dmTips;
    data['processing_time'] = processingTime;
    data['cutlery'] = cutlery;
    data['unavailable_item_note'] = unavailableItemNote;
    data['delivery_instruction'] = deliveryInstruction;

    // تحويل orderProof إلى List<String> إذا كانت القيمة غير null
    if (orderProof != null) {
      data['order_proof'] = orderProof;
    }

    // تحويل payments إلى List<Map<String, dynamic>> إذا كانت القيمة غير null
    if (payments != null) {
      data['payments'] = payments!.map((v) => v.toJson()).toList();
    }

    data['additional_charge'] = additionalCharge;
    data['is_guest'] = isGuest;
    data['flash_admin_discount_amount'] = flashAdminDiscountAmount;
    data['flash_store_discount_amount'] = flashStoreDiscountAmount;

    return data;
  }
}

class PaginatedOrder {
  int? totalSize;
  String? limit;
  String? offset;
  List<OrderModel>? orders;

  PaginatedOrder({this.totalSize, this.limit, this.offset, this.orders});

  PaginatedOrder.fromJson(Map<String, dynamic> json) {
    totalSize = json['total_size'];
    limit = json['limit'].toString();
    offset = json['offset'].toString();
    if (json['orders'] != null) {
      orders = [];
      json['orders'].forEach((v) {
        orders!.add(OrderModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['total_size'] = totalSize;
    data['limit'] = limit;
    data['offset'] = offset;
    if (orders != null) {
      data['orders'] = orders!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}


class DeliveryMan {
  int? id;
  String? fName;
  String? lName;
  String? phone;
  String? email;
  String? image;
  int? zoneId;
  int? active;
  String? status;

  DeliveryMan(
      {this.id,
        this.fName,
        this.lName,
        this.phone,
        this.email,
        this.image,
        this.zoneId,
        this.active,
        this.status,
      });

  DeliveryMan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    zoneId = json['zone_id'];
    active = json['active'];
    status = json['application_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['f_name'] = fName;
    data['l_name'] = lName;
    data['phone'] = phone;
    data['email'] = email;
    data['image'] = image;
    data['zone_id'] = zoneId;
    data['active'] = active;
    data['available'] = status;
    return data;
  }
}

class DeliveryAddress {
  String? contactPersonName;
  String? contactPersonNumber;
  String? addressType;
  String? address;
  String? longitude;
  String? latitude;
  String? streetNumber;
  String? house;
  String? floor;

  DeliveryAddress(
      {this.contactPersonName,
        this.contactPersonNumber,
        this.addressType,
        this.address,
        this.longitude,
        this.latitude,
        this.streetNumber,
        this.house,
        this.floor});

  DeliveryAddress.fromJson(Map<String, dynamic> json) {
    contactPersonName = json['contact_person_name'];
    contactPersonNumber = json['contact_person_number'];
    addressType = json['address_type'];
    address = json['address'];
    longitude = json['longitude'];
    latitude = json['latitude'];
    streetNumber = json['road'];
    house = json['house'];
    floor = json['floor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['contact_person_name'] = contactPersonName;
    data['contact_person_number'] = contactPersonNumber;
    data['address_type'] = addressType;
    data['address'] = address;
    data['longitude'] = longitude;
    data['latitude'] = latitude;
    data['road'] = streetNumber;
    data['house'] = house;
    data['floor'] = floor;
    return data;
  }
}

class Customer {
  int? id;
  String? fName;
  String? lName;
  String? phone;
  String? email;
  String? image;
  String? createdAt;
  String? updatedAt;

  Customer(
      {this.id,
        this.fName,
        this.lName,
        this.phone,
        this.email,
        this.image,
        this.createdAt,
        this.updatedAt});

  Customer.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    phone = json['phone'];
    email = json['email'];
    image = json['image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['f_name'] = fName;
    data['l_name'] = lName;
    data['phone'] = phone;
    data['email'] = email;
    data['image'] = image;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}

class Payments {
  int? id;
  int? orderId;
  double? amount;
  String? paymentStatus;
  String? paymentMethod;
  String? createdAt;
  String? updatedAt;

  Payments({this.id,
    this.orderId,
    this.amount,
    this.paymentStatus,
    this.paymentMethod,
    this.createdAt,
    this.updatedAt});

  Payments.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    amount = json['amount']?.toDouble();
    paymentStatus = json['payment_status'];
    paymentMethod = json['payment_method'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['order_id'] = orderId;
    data['amount'] = amount;
    data['payment_status'] = paymentStatus;
    data['payment_method'] = paymentMethod;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    return data;
  }
}
