class Pivot {
  Pivot({
      this.invoiceId, 
      this.paymentHistoryId,});

  Pivot.fromJson(dynamic json) {
    invoiceId = json['invoice_id'];
    paymentHistoryId = json['payment_history_id'];
  }
  int? invoiceId;
  int? paymentHistoryId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['invoice_id'] = invoiceId;
    map['payment_history_id'] = paymentHistoryId;
    return map;
  }

}