class InvoiceLines {
  InvoiceLines({
      this.id, 
      this.payableAmount, 
      this.chargedAmount, 
      this.taxAmount, 
      this.discountAmount, 
      this.taxDetails, 
      this.invoiceId, 
      this.description, 
      this.taxId, 
      this.discountId, 
      this.invoiceableId, 
      this.invoiceableType, 
      this.name, 
      this.quantity, 
      this.isFree, 
      this.isComplimentary, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt,});

  InvoiceLines.fromJson(dynamic json) {
    id = json['id'];
    payableAmount = json['payable_amount'];
    chargedAmount = json['charged_amount'];
    taxAmount = json['tax_amount'];
    discountAmount = json['discount_amount'];
    taxDetails = json['tax_details'];
    invoiceId = json['invoice_id'];
    description = json['description'];
    taxId = json['tax_id'];
    discountId = json['discount_id'];
    invoiceableId = json['invoiceable_id'];
    invoiceableType = json['invoiceable_type'];
    name = json['name'];
    quantity = json['quantity'];
    isFree = json['is_free'];
    isComplimentary = json['is_complimentary'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }
  int? id;
  String? payableAmount;
  String? chargedAmount;
  String? taxAmount;
  String? discountAmount;
  dynamic taxDetails;
  int? invoiceId;
  dynamic description;
  dynamic taxId;
  dynamic discountId;
  int? invoiceableId;
  String? invoiceableType;
  String? name;
  int? quantity;
  int? isFree;
  int? isComplimentary;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['payable_amount'] = payableAmount;
    map['charged_amount'] = chargedAmount;
    map['tax_amount'] = taxAmount;
    map['discount_amount'] = discountAmount;
    map['tax_details'] = taxDetails;
    map['invoice_id'] = invoiceId;
    map['description'] = description;
    map['tax_id'] = taxId;
    map['discount_id'] = discountId;
    map['invoiceable_id'] = invoiceableId;
    map['invoiceable_type'] = invoiceableType;
    map['name'] = name;
    map['quantity'] = quantity;
    map['is_free'] = isFree;
    map['is_complimentary'] = isComplimentary;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    return map;
  }

}