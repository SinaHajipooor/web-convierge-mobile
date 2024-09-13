import 'InvoiceLines.dart';
import 'PaymentHistories.dart';
import 'Currency.dart';
import 'Status.dart';

class Data {
  Data({
      this.id, 
      this.relatedId, 
      this.relatedType, 
      this.totalTaxAmount, 
      this.totalDiscountAmount, 
      this.totalChargedAmount, 
      this.totalPayableAmount, 
      this.totalPayedAmount, 
      this.paidDate, 
      this.createdBy, 
      this.updatedBy, 
      this.currencyId, 
      this.reference, 
      this.statusId, 
      this.receiverInfo, 
      this.senderInfo, 
      this.paymentInfo, 
      this.note, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt, 
      this.status, 
      this.invoiceLines, 
      this.paymentHistories, 
      this.currency,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    relatedId = json['related_id'];
    relatedType = json['related_type'];
    totalTaxAmount = json['total_tax_amount'];
    totalDiscountAmount = json['total_discount_amount'];
    totalChargedAmount = json['total_charged_amount'];
    totalPayableAmount = json['total_payable_amount'];
    totalPayedAmount = json['total_payed_amount'];
    paidDate = json['paid_date'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];
    currencyId = json['currency_id'];
    reference = json['reference'];
    statusId = json['status_id'];
    receiverInfo = json['receiver_info'];
    senderInfo = json['sender_info'];
    paymentInfo = json['payment_info'];
    note = json['note'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    status = json['status'] != null ? Status.fromJson(json['status']) : null;
    if (json['invoice_lines'] != null) {
      invoiceLines = [];
      json['invoice_lines'].forEach((v) {
        invoiceLines?.add(InvoiceLines.fromJson(v));
      });
    }
    if (json['payment_histories'] != null) {
      paymentHistories = [];
      json['payment_histories'].forEach((v) {
        paymentHistories?.add(PaymentHistories.fromJson(v));
      });
    }
    currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
  }
  int? id;
  int? relatedId;
  String? relatedType;
  String? totalTaxAmount;
  String? totalDiscountAmount;
  String? totalChargedAmount;
  String? totalPayableAmount;
  String? totalPayedAmount;
  String? paidDate;
  int? createdBy;
  int? updatedBy;
  int? currencyId;
  dynamic reference;
  int? statusId;
  dynamic receiverInfo;
  dynamic senderInfo;
  dynamic paymentInfo;
  dynamic note;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  Status? status;
  List<InvoiceLines>? invoiceLines;
  List<PaymentHistories>? paymentHistories;
  Currency? currency;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['related_id'] = relatedId;
    map['related_type'] = relatedType;
    map['total_tax_amount'] = totalTaxAmount;
    map['total_discount_amount'] = totalDiscountAmount;
    map['total_charged_amount'] = totalChargedAmount;
    map['total_payable_amount'] = totalPayableAmount;
    map['total_payed_amount'] = totalPayedAmount;
    map['paid_date'] = paidDate;
    map['created_by'] = createdBy;
    map['updated_by'] = updatedBy;
    map['currency_id'] = currencyId;
    map['reference'] = reference;
    map['status_id'] = statusId;
    map['receiver_info'] = receiverInfo;
    map['sender_info'] = senderInfo;
    map['payment_info'] = paymentInfo;
    map['note'] = note;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    if (status != null) {
      map['status'] = status?.toJson();
    }
    if (invoiceLines != null) {
      map['invoice_lines'] = invoiceLines?.map((v) => v.toJson()).toList();
    }
    if (paymentHistories != null) {
      map['payment_histories'] = paymentHistories?.map((v) => v.toJson()).toList();
    }
    if (currency != null) {
      map['currency'] = currency?.toJson();
    }
    return map;
  }

}