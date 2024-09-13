import 'Pivot.dart';
import 'Status.dart';

class PaymentHistories {
  PaymentHistories({
      this.id, 
      this.userId, 
      this.amount, 
      this.method, 
      this.transactionId, 
      this.statusId, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt, 
      this.pivot, 
      this.status,});

  PaymentHistories.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    amount = json['amount'];
    method = json['method'];
    transactionId = json['transaction_id'];
    statusId = json['status_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
  }
  int? id;
  int? userId;
  String? amount;
  String? method;
  dynamic transactionId;
  int? statusId;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Pivot? pivot;
  Status? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['amount'] = amount;
    map['method'] = method;
    map['transaction_id'] = transactionId;
    map['status_id'] = statusId;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    if (pivot != null) {
      map['pivot'] = pivot?.toJson();
    }
    if (status != null) {
      map['status'] = status?.toJson();
    }
    return map;
  }

}