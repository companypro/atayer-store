import 'package:sixam_mart_store/data/model/response/order_model.dart';

class RunningOrderModel {
  String? status;
  List<OrderModel>? orderList;

  RunningOrderModel({ this.status,  this.orderList});
}