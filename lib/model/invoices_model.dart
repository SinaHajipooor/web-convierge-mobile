/// data : [{"id":45,"related_id":45,"related_type":"Scheduling\\Models\\Authorization","total_tax_amount":"3.60","total_discount_amount":"2.00","total_charged_amount":"20.00","total_payable_amount":"18.00","total_payed_amount":"0.00","paid_date":null,"created_by":1,"updated_by":1,"currency_id":4,"reference":null,"status_id":5,"receiver_info":null,"sender_info":null,"payment_info":null,"note":null,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:09.000000Z","deleted_at":null,"status":{"id":5,"name":{"en":"Not Paid","tr":"ödenmeyen"},"slug":"Not Paid","type":"error","created_at":"2023-10-28T11:59:35.000000Z","updated_at":"2023-10-28T11:59:35.000000Z","deleted_at":null,"translated_name":"Not Paid"},"invoice_lines":[{"id":246,"payable_amount":"9.00","charged_amount":"10.00","tax_amount":"1.80","discount_amount":"1.00","tax_details":null,"invoice_id":45,"description":null,"tax_id":null,"discount_id":null,"invoiceable_id":246,"invoiceable_type":"Scheduling\\Models\\Appointment","name":"Invoice Line","quantity":1,"is_free":0,"is_complimentary":0,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:09.000000Z","deleted_at":null},{"id":247,"payable_amount":"9.00","charged_amount":"10.00","tax_amount":"1.80","discount_amount":"1.00","tax_details":null,"invoice_id":45,"description":null,"tax_id":null,"discount_id":null,"invoiceable_id":247,"invoiceable_type":"Scheduling\\Models\\Appointment","name":"Invoice Line","quantity":1,"is_free":0,"is_complimentary":0,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:09.000000Z","deleted_at":null}],"payment_histories":[],"currency":{"id":4,"currency":"TRY","translated_name":null},"relateable":{"id":45,"notes":null,"client_id":361,"created_by":360,"updated_by":360,"service_id":3,"office_id":1,"course_id":70,"total_minutes":"60.00","status_id":1,"office_notes":null,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null,"course":{"id":70,"title":"test now","duration":30,"interval":"1","start_date":"2024-02-29","end_date":"2024-03-06","service_id":3,"price_id":31,"discount_id":68,"status_id":1,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"4 days ago","end_date_as_diff_for_humans":"1 day from now","offices":[{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2023-11-02T10:22:55.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true,"pivot":{"course_id":70,"office_id":1}},{"id":2,"parent_id":null,"name":"REFORMER","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-08-23T22:45:18.000000Z","updated_at":"2023-11-02T10:22:49.000000Z","deleted_at":null,"select_box_name":"REFORMER","locked":true,"pivot":{"course_id":70,"office_id":2}}],"service":{"id":3,"name":"FONKSİYONEL ANTRENMAN","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2023-11-02T10:24:13.000000Z","updated_at":"2023-11-02T10:24:13.000000Z","deleted_at":null,"locked":true,"select_box_name":"FONKSİYONEL ANTRENMAN"},"recurrences":[{"id":105,"start_date":"2024-02-29","end_date":"2024-02-29","start_time":"12:00:00","end_time":"12:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":4,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null},{"id":106,"start_date":"2024-03-01","end_date":"2024-03-01","start_time":"13:00:00","end_time":"13:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":5,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null}],"staff":[{"id":363,"first_name":"staff test","last_name":"staff lastname","mobile":"989388852033","date_of_birth":"2024-02-01","address":null,"emergency_contact_number":1234548791,"hes_code":"135456","vaccination_status":0,"registration_date":"2024-02-02","references":null,"email":"staff@gmail.com","username":null,"preferred_locale":4,"headline":null,"bio":null,"telegram":null,"image_id":4,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"non binary","email_verified_at":null,"created_at":"2024-02-02T06:27:49.000000Z","updated_at":"2024-02-04T14:33:22.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"staff test staff lastname","pivot":{"course_id":70,"staff_id":363}}]}},"buttons":[{"label":"Renew","color":"info","route":{"uri":"https://api-dev.st-udioreformer.com/api/courses/extend-course/70","method":"post"}}]}]
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class InvoicesModel {
  InvoicesModel({
      List<Data>? data, 
      String? message, 
      bool? success, 
      String? locale, 
      String? timeZone, 
      num? fdow,}){
    _data = data;
    _message = message;
    _success = success;
    _locale = locale;
    _timeZone = timeZone;
    _fdow = fdow;
}

  InvoicesModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Data.fromJson(v));
      });
    }
    _message = json['message'];
    _success = json['success'];
    _locale = json['locale'];
    _timeZone = json['time_zone'];
    _fdow = json['fdow'];
  }
  List<Data>? _data;
  String? _message;
  bool? _success;
  String? _locale;
  String? _timeZone;
  num? _fdow;
InvoicesModel copyWith({  List<Data>? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  num? fdow,
}) => InvoicesModel(  data: data ?? _data,
  message: message ?? _message,
  success: success ?? _success,
  locale: locale ?? _locale,
  timeZone: timeZone ?? _timeZone,
  fdow: fdow ?? _fdow,
);
  List<Data>? get data => _data;
  String? get message => _message;
  bool? get success => _success;
  String? get locale => _locale;
  String? get timeZone => _timeZone;
  num? get fdow => _fdow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    map['message'] = _message;
    map['success'] = _success;
    map['locale'] = _locale;
    map['time_zone'] = _timeZone;
    map['fdow'] = _fdow;
    return map;
  }

}

/// id : 45
/// related_id : 45
/// related_type : "Scheduling\\Models\\Authorization"
/// total_tax_amount : "3.60"
/// total_discount_amount : "2.00"
/// total_charged_amount : "20.00"
/// total_payable_amount : "18.00"
/// total_payed_amount : "0.00"
/// paid_date : null
/// created_by : 1
/// updated_by : 1
/// currency_id : 4
/// reference : null
/// status_id : 5
/// receiver_info : null
/// sender_info : null
/// payment_info : null
/// note : null
/// created_at : "2024-02-28T14:39:08.000000Z"
/// updated_at : "2024-02-28T14:39:09.000000Z"
/// deleted_at : null
/// status : {"id":5,"name":{"en":"Not Paid","tr":"ödenmeyen"},"slug":"Not Paid","type":"error","created_at":"2023-10-28T11:59:35.000000Z","updated_at":"2023-10-28T11:59:35.000000Z","deleted_at":null,"translated_name":"Not Paid"}
/// invoice_lines : [{"id":246,"payable_amount":"9.00","charged_amount":"10.00","tax_amount":"1.80","discount_amount":"1.00","tax_details":null,"invoice_id":45,"description":null,"tax_id":null,"discount_id":null,"invoiceable_id":246,"invoiceable_type":"Scheduling\\Models\\Appointment","name":"Invoice Line","quantity":1,"is_free":0,"is_complimentary":0,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:09.000000Z","deleted_at":null},{"id":247,"payable_amount":"9.00","charged_amount":"10.00","tax_amount":"1.80","discount_amount":"1.00","tax_details":null,"invoice_id":45,"description":null,"tax_id":null,"discount_id":null,"invoiceable_id":247,"invoiceable_type":"Scheduling\\Models\\Appointment","name":"Invoice Line","quantity":1,"is_free":0,"is_complimentary":0,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:09.000000Z","deleted_at":null}]
/// payment_histories : []
/// currency : {"id":4,"currency":"TRY","translated_name":null}
/// relateable : {"id":45,"notes":null,"client_id":361,"created_by":360,"updated_by":360,"service_id":3,"office_id":1,"course_id":70,"total_minutes":"60.00","status_id":1,"office_notes":null,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null,"course":{"id":70,"title":"test now","duration":30,"interval":"1","start_date":"2024-02-29","end_date":"2024-03-06","service_id":3,"price_id":31,"discount_id":68,"status_id":1,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"4 days ago","end_date_as_diff_for_humans":"1 day from now","offices":[{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2023-11-02T10:22:55.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true,"pivot":{"course_id":70,"office_id":1}},{"id":2,"parent_id":null,"name":"REFORMER","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-08-23T22:45:18.000000Z","updated_at":"2023-11-02T10:22:49.000000Z","deleted_at":null,"select_box_name":"REFORMER","locked":true,"pivot":{"course_id":70,"office_id":2}}],"service":{"id":3,"name":"FONKSİYONEL ANTRENMAN","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2023-11-02T10:24:13.000000Z","updated_at":"2023-11-02T10:24:13.000000Z","deleted_at":null,"locked":true,"select_box_name":"FONKSİYONEL ANTRENMAN"},"recurrences":[{"id":105,"start_date":"2024-02-29","end_date":"2024-02-29","start_time":"12:00:00","end_time":"12:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":4,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null},{"id":106,"start_date":"2024-03-01","end_date":"2024-03-01","start_time":"13:00:00","end_time":"13:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":5,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null}],"staff":[{"id":363,"first_name":"staff test","last_name":"staff lastname","mobile":"989388852033","date_of_birth":"2024-02-01","address":null,"emergency_contact_number":1234548791,"hes_code":"135456","vaccination_status":0,"registration_date":"2024-02-02","references":null,"email":"staff@gmail.com","username":null,"preferred_locale":4,"headline":null,"bio":null,"telegram":null,"image_id":4,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"non binary","email_verified_at":null,"created_at":"2024-02-02T06:27:49.000000Z","updated_at":"2024-02-04T14:33:22.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"staff test staff lastname","pivot":{"course_id":70,"staff_id":363}}]}}
/// buttons : [{"label":"Renew","color":"info","route":{"uri":"https://api-dev.st-udioreformer.com/api/courses/extend-course/70","method":"post"}}]

class Data {
  Data({
      num? id, 
      num? relatedId, 
      String? relatedType, 
      String? totalTaxAmount, 
      String? totalDiscountAmount, 
      String? totalChargedAmount, 
      String? totalPayableAmount, 
      String? totalPayedAmount, 
      dynamic paidDate, 
      num? createdBy, 
      num? updatedBy, 
      num? currencyId, 
      dynamic reference, 
      num? statusId, 
      dynamic receiverInfo, 
      dynamic senderInfo, 
      dynamic paymentInfo, 
      dynamic note, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      Status? status, 
      List<InvoiceLines>? invoiceLines, 
      List<dynamic>? paymentHistories, 
      Currency? currency, 
      Relateable? relateable, 
      List<Buttons>? buttons,}){
    _id = id;
    _relatedId = relatedId;
    _relatedType = relatedType;
    _totalTaxAmount = totalTaxAmount;
    _totalDiscountAmount = totalDiscountAmount;
    _totalChargedAmount = totalChargedAmount;
    _totalPayableAmount = totalPayableAmount;
    _totalPayedAmount = totalPayedAmount;
    _paidDate = paidDate;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _currencyId = currencyId;
    _reference = reference;
    _statusId = statusId;
    _receiverInfo = receiverInfo;
    _senderInfo = senderInfo;
    _paymentInfo = paymentInfo;
    _note = note;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _status = status;
    _invoiceLines = invoiceLines;
    _paymentHistories = paymentHistories;
    _currency = currency;
    _relateable = relateable;
    _buttons = buttons;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _relatedId = json['related_id'];
    _relatedType = json['related_type'];
    _totalTaxAmount = json['total_tax_amount'];
    _totalDiscountAmount = json['total_discount_amount'];
    _totalChargedAmount = json['total_charged_amount'];
    _totalPayableAmount = json['total_payable_amount'];
    _totalPayedAmount = json['total_payed_amount'];
    _paidDate = json['paid_date'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _currencyId = json['currency_id'];
    _reference = json['reference'];
    _statusId = json['status_id'];
    _receiverInfo = json['receiver_info'];
    _senderInfo = json['sender_info'];
    _paymentInfo = json['payment_info'];
    _note = json['note'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
    if (json['invoice_lines'] != null) {
      _invoiceLines = [];
      json['invoice_lines'].forEach((v) {
        _invoiceLines?.add(InvoiceLines.fromJson(v));
      });
    }
    if (json['payment_histories'] != null) {
      _paymentHistories = [];
      json['payment_histories'].forEach((v) {
        _paymentHistories?.add(v);
      });
    }
    _currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
    _relateable = json['relateable'] != null ? Relateable.fromJson(json['relateable']) : null;
    if (json['buttons'] != null) {
      _buttons = [];
      json['buttons'].forEach((v) {
        _buttons?.add(Buttons.fromJson(v));
      });
    }
  }
  num? _id;
  num? _relatedId;
  String? _relatedType;
  String? _totalTaxAmount;
  String? _totalDiscountAmount;
  String? _totalChargedAmount;
  String? _totalPayableAmount;
  String? _totalPayedAmount;
  dynamic _paidDate;
  num? _createdBy;
  num? _updatedBy;
  num? _currencyId;
  dynamic _reference;
  num? _statusId;
  dynamic _receiverInfo;
  dynamic _senderInfo;
  dynamic _paymentInfo;
  dynamic _note;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  Status? _status;
  List<InvoiceLines>? _invoiceLines;
  List<dynamic>? _paymentHistories;
  Currency? _currency;
  Relateable? _relateable;
  List<Buttons>? _buttons;
Data copyWith({  num? id,
  num? relatedId,
  String? relatedType,
  String? totalTaxAmount,
  String? totalDiscountAmount,
  String? totalChargedAmount,
  String? totalPayableAmount,
  String? totalPayedAmount,
  dynamic paidDate,
  num? createdBy,
  num? updatedBy,
  num? currencyId,
  dynamic reference,
  num? statusId,
  dynamic receiverInfo,
  dynamic senderInfo,
  dynamic paymentInfo,
  dynamic note,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  Status? status,
  List<InvoiceLines>? invoiceLines,
  List<dynamic>? paymentHistories,
  Currency? currency,
  Relateable? relateable,
  List<Buttons>? buttons,
}) => Data(  id: id ?? _id,
  relatedId: relatedId ?? _relatedId,
  relatedType: relatedType ?? _relatedType,
  totalTaxAmount: totalTaxAmount ?? _totalTaxAmount,
  totalDiscountAmount: totalDiscountAmount ?? _totalDiscountAmount,
  totalChargedAmount: totalChargedAmount ?? _totalChargedAmount,
  totalPayableAmount: totalPayableAmount ?? _totalPayableAmount,
  totalPayedAmount: totalPayedAmount ?? _totalPayedAmount,
  paidDate: paidDate ?? _paidDate,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  currencyId: currencyId ?? _currencyId,
  reference: reference ?? _reference,
  statusId: statusId ?? _statusId,
  receiverInfo: receiverInfo ?? _receiverInfo,
  senderInfo: senderInfo ?? _senderInfo,
  paymentInfo: paymentInfo ?? _paymentInfo,
  note: note ?? _note,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  status: status ?? _status,
  invoiceLines: invoiceLines ?? _invoiceLines,
  paymentHistories: paymentHistories ?? _paymentHistories,
  currency: currency ?? _currency,
  relateable: relateable ?? _relateable,
  buttons: buttons ?? _buttons,
);
  num? get id => _id;
  num? get relatedId => _relatedId;
  String? get relatedType => _relatedType;
  String? get totalTaxAmount => _totalTaxAmount;
  String? get totalDiscountAmount => _totalDiscountAmount;
  String? get totalChargedAmount => _totalChargedAmount;
  String? get totalPayableAmount => _totalPayableAmount;
  String? get totalPayedAmount => _totalPayedAmount;
  dynamic get paidDate => _paidDate;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  num? get currencyId => _currencyId;
  dynamic get reference => _reference;
  num? get statusId => _statusId;
  dynamic get receiverInfo => _receiverInfo;
  dynamic get senderInfo => _senderInfo;
  dynamic get paymentInfo => _paymentInfo;
  dynamic get note => _note;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  Status? get status => _status;
  List<InvoiceLines>? get invoiceLines => _invoiceLines;
  List<dynamic>? get paymentHistories => _paymentHistories;
  Currency? get currency => _currency;
  Relateable? get relateable => _relateable;
  List<Buttons>? get buttons => _buttons;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['related_id'] = _relatedId;
    map['related_type'] = _relatedType;
    map['total_tax_amount'] = _totalTaxAmount;
    map['total_discount_amount'] = _totalDiscountAmount;
    map['total_charged_amount'] = _totalChargedAmount;
    map['total_payable_amount'] = _totalPayableAmount;
    map['total_payed_amount'] = _totalPayedAmount;
    map['paid_date'] = _paidDate;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['currency_id'] = _currencyId;
    map['reference'] = _reference;
    map['status_id'] = _statusId;
    map['receiver_info'] = _receiverInfo;
    map['sender_info'] = _senderInfo;
    map['payment_info'] = _paymentInfo;
    map['note'] = _note;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    if (_invoiceLines != null) {
      map['invoice_lines'] = _invoiceLines?.map((v) => v.toJson()).toList();
    }
    if (_paymentHistories != null) {
      map['payment_histories'] = _paymentHistories?.map((v) => v.toJson()).toList();
    }
    if (_currency != null) {
      map['currency'] = _currency?.toJson();
    }
    if (_relateable != null) {
      map['relateable'] = _relateable?.toJson();
    }
    if (_buttons != null) {
      map['buttons'] = _buttons?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// label : "Renew"
/// color : "info"
/// route : {"uri":"https://api-dev.st-udioreformer.com/api/courses/extend-course/70","method":"post"}

class Buttons {
  Buttons({
      String? label, 
      String? color, 
      Route? route,}){
    _label = label;
    _color = color;
    _route = route;
}

  Buttons.fromJson(dynamic json) {
    _label = json['label'];
    _color = json['color'];
    _route = json['route'] != null ? Route.fromJson(json['route']) : null;
  }
  String? _label;
  String? _color;
  Route? _route;
Buttons copyWith({  String? label,
  String? color,
  Route? route,
}) => Buttons(  label: label ?? _label,
  color: color ?? _color,
  route: route ?? _route,
);
  String? get label => _label;
  String? get color => _color;
  Route? get route => _route;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['label'] = _label;
    map['color'] = _color;
    if (_route != null) {
      map['route'] = _route?.toJson();
    }
    return map;
  }

}

/// uri : "https://api-dev.st-udioreformer.com/api/courses/extend-course/70"
/// method : "post"

class Route {
  Route({
      String? uri, 
      String? method,}){
    _uri = uri;
    _method = method;
}

  Route.fromJson(dynamic json) {
    _uri = json['uri'];
    _method = json['method'];
  }
  String? _uri;
  String? _method;
Route copyWith({  String? uri,
  String? method,
}) => Route(  uri: uri ?? _uri,
  method: method ?? _method,
);
  String? get uri => _uri;
  String? get method => _method;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['uri'] = _uri;
    map['method'] = _method;
    return map;
  }

}

/// id : 45
/// notes : null
/// client_id : 361
/// created_by : 360
/// updated_by : 360
/// service_id : 3
/// office_id : 1
/// course_id : 70
/// total_minutes : "60.00"
/// status_id : 1
/// office_notes : null
/// created_at : "2024-02-28T14:39:08.000000Z"
/// updated_at : "2024-02-28T14:39:08.000000Z"
/// deleted_at : null
/// course : {"id":70,"title":"test now","duration":30,"interval":"1","start_date":"2024-02-29","end_date":"2024-03-06","service_id":3,"price_id":31,"discount_id":68,"status_id":1,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"4 days ago","end_date_as_diff_for_humans":"1 day from now","offices":[{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2023-11-02T10:22:55.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true,"pivot":{"course_id":70,"office_id":1}},{"id":2,"parent_id":null,"name":"REFORMER","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-08-23T22:45:18.000000Z","updated_at":"2023-11-02T10:22:49.000000Z","deleted_at":null,"select_box_name":"REFORMER","locked":true,"pivot":{"course_id":70,"office_id":2}}],"service":{"id":3,"name":"FONKSİYONEL ANTRENMAN","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2023-11-02T10:24:13.000000Z","updated_at":"2023-11-02T10:24:13.000000Z","deleted_at":null,"locked":true,"select_box_name":"FONKSİYONEL ANTRENMAN"},"recurrences":[{"id":105,"start_date":"2024-02-29","end_date":"2024-02-29","start_time":"12:00:00","end_time":"12:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":4,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null},{"id":106,"start_date":"2024-03-01","end_date":"2024-03-01","start_time":"13:00:00","end_time":"13:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":5,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null}],"staff":[{"id":363,"first_name":"staff test","last_name":"staff lastname","mobile":"989388852033","date_of_birth":"2024-02-01","address":null,"emergency_contact_number":1234548791,"hes_code":"135456","vaccination_status":0,"registration_date":"2024-02-02","references":null,"email":"staff@gmail.com","username":null,"preferred_locale":4,"headline":null,"bio":null,"telegram":null,"image_id":4,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"non binary","email_verified_at":null,"created_at":"2024-02-02T06:27:49.000000Z","updated_at":"2024-02-04T14:33:22.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"staff test staff lastname","pivot":{"course_id":70,"staff_id":363}}]}

class Relateable {
  Relateable({
      num? id, 
      dynamic notes, 
      num? clientId, 
      num? createdBy, 
      num? updatedBy, 
      num? serviceId, 
      num? officeId, 
      num? courseId, 
      String? totalMinutes, 
      num? statusId, 
      dynamic officeNotes, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      Course? course,}){
    _id = id;
    _notes = notes;
    _clientId = clientId;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _serviceId = serviceId;
    _officeId = officeId;
    _courseId = courseId;
    _totalMinutes = totalMinutes;
    _statusId = statusId;
    _officeNotes = officeNotes;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _course = course;
}

  Relateable.fromJson(dynamic json) {
    _id = json['id'];
    _notes = json['notes'];
    _clientId = json['client_id'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _serviceId = json['service_id'];
    _officeId = json['office_id'];
    _courseId = json['course_id'];
    _totalMinutes = json['total_minutes'];
    _statusId = json['status_id'];
    _officeNotes = json['office_notes'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _course = json['course'] != null ? Course.fromJson(json['course']) : null;
  }
  num? _id;
  dynamic _notes;
  num? _clientId;
  num? _createdBy;
  num? _updatedBy;
  num? _serviceId;
  num? _officeId;
  num? _courseId;
  String? _totalMinutes;
  num? _statusId;
  dynamic _officeNotes;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  Course? _course;
Relateable copyWith({  num? id,
  dynamic notes,
  num? clientId,
  num? createdBy,
  num? updatedBy,
  num? serviceId,
  num? officeId,
  num? courseId,
  String? totalMinutes,
  num? statusId,
  dynamic officeNotes,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  Course? course,
}) => Relateable(  id: id ?? _id,
  notes: notes ?? _notes,
  clientId: clientId ?? _clientId,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  serviceId: serviceId ?? _serviceId,
  officeId: officeId ?? _officeId,
  courseId: courseId ?? _courseId,
  totalMinutes: totalMinutes ?? _totalMinutes,
  statusId: statusId ?? _statusId,
  officeNotes: officeNotes ?? _officeNotes,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  course: course ?? _course,
);
  num? get id => _id;
  dynamic get notes => _notes;
  num? get clientId => _clientId;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  num? get serviceId => _serviceId;
  num? get officeId => _officeId;
  num? get courseId => _courseId;
  String? get totalMinutes => _totalMinutes;
  num? get statusId => _statusId;
  dynamic get officeNotes => _officeNotes;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  Course? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['notes'] = _notes;
    map['client_id'] = _clientId;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['service_id'] = _serviceId;
    map['office_id'] = _officeId;
    map['course_id'] = _courseId;
    map['total_minutes'] = _totalMinutes;
    map['status_id'] = _statusId;
    map['office_notes'] = _officeNotes;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    return map;
  }

}

/// id : 70
/// title : "test now"
/// duration : 30
/// interval : "1"
/// start_date : "2024-02-29"
/// end_date : "2024-03-06"
/// service_id : 3
/// price_id : 31
/// discount_id : 68
/// status_id : 1
/// created_at : "2024-02-28T14:39:08.000000Z"
/// updated_at : "2024-02-28T14:39:08.000000Z"
/// deleted_at : null
/// start_date_as_diff_for_humans : "4 days ago"
/// end_date_as_diff_for_humans : "1 day from now"
/// offices : [{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2023-11-02T10:22:55.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true,"pivot":{"course_id":70,"office_id":1}},{"id":2,"parent_id":null,"name":"REFORMER","office_number":1,"notes":null,"created_by":1,"status":"Inactive","category":"Machine","created_at":"2022-08-23T22:45:18.000000Z","updated_at":"2023-11-02T10:22:49.000000Z","deleted_at":null,"select_box_name":"REFORMER","locked":true,"pivot":{"course_id":70,"office_id":2}}]
/// service : {"id":3,"name":"FONKSİYONEL ANTRENMAN","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2023-11-02T10:24:13.000000Z","updated_at":"2023-11-02T10:24:13.000000Z","deleted_at":null,"locked":true,"select_box_name":"FONKSİYONEL ANTRENMAN"}
/// recurrences : [{"id":105,"start_date":"2024-02-29","end_date":"2024-02-29","start_time":"12:00:00","end_time":"12:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":4,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null},{"id":106,"start_date":"2024-03-01","end_date":"2024-03-01","start_time":"13:00:00","end_time":"13:30:00","staff_id":363,"course_id":70,"duration":30,"week_day":5,"created_at":"2024-02-28T14:39:08.000000Z","updated_at":"2024-02-28T14:39:08.000000Z","deleted_at":null}]
/// staff : [{"id":363,"first_name":"staff test","last_name":"staff lastname","mobile":"989388852033","date_of_birth":"2024-02-01","address":null,"emergency_contact_number":1234548791,"hes_code":"135456","vaccination_status":0,"registration_date":"2024-02-02","references":null,"email":"staff@gmail.com","username":null,"preferred_locale":4,"headline":null,"bio":null,"telegram":null,"image_id":4,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"non binary","email_verified_at":null,"created_at":"2024-02-02T06:27:49.000000Z","updated_at":"2024-02-04T14:33:22.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"staff test staff lastname","pivot":{"course_id":70,"staff_id":363}}]

class Course {
  Course({
      num? id, 
      String? title, 
      num? duration, 
      String? interval, 
      String? startDate, 
      String? endDate, 
      num? serviceId, 
      num? priceId, 
      num? discountId, 
      num? statusId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? startDateAsDiffForHumans, 
      String? endDateAsDiffForHumans, 
      List<Offices>? offices, 
      Service? service, 
      List<Recurrences>? recurrences, 
      List<Staff>? staff,}){
    _id = id;
    _title = title;
    _duration = duration;
    _interval = interval;
    _startDate = startDate;
    _endDate = endDate;
    _serviceId = serviceId;
    _priceId = priceId;
    _discountId = discountId;
    _statusId = statusId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _startDateAsDiffForHumans = startDateAsDiffForHumans;
    _endDateAsDiffForHumans = endDateAsDiffForHumans;
    _offices = offices;
    _service = service;
    _recurrences = recurrences;
    _staff = staff;
}

  Course.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _duration = json['duration'];
    _interval = json['interval'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _serviceId = json['service_id'];
    _priceId = json['price_id'];
    _discountId = json['discount_id'];
    _statusId = json['status_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _startDateAsDiffForHumans = json['start_date_as_diff_for_humans'];
    _endDateAsDiffForHumans = json['end_date_as_diff_for_humans'];
    if (json['offices'] != null) {
      _offices = [];
      json['offices'].forEach((v) {
        _offices?.add(Offices.fromJson(v));
      });
    }
    _service = json['service'] != null ? Service.fromJson(json['service']) : null;
    if (json['recurrences'] != null) {
      _recurrences = [];
      json['recurrences'].forEach((v) {
        _recurrences?.add(Recurrences.fromJson(v));
      });
    }
    if (json['staff'] != null) {
      _staff = [];
      json['staff'].forEach((v) {
        _staff?.add(Staff.fromJson(v));
      });
    }
  }
  num? _id;
  String? _title;
  num? _duration;
  String? _interval;
  String? _startDate;
  String? _endDate;
  num? _serviceId;
  num? _priceId;
  num? _discountId;
  num? _statusId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _startDateAsDiffForHumans;
  String? _endDateAsDiffForHumans;
  List<Offices>? _offices;
  Service? _service;
  List<Recurrences>? _recurrences;
  List<Staff>? _staff;
Course copyWith({  num? id,
  String? title,
  num? duration,
  String? interval,
  String? startDate,
  String? endDate,
  num? serviceId,
  num? priceId,
  num? discountId,
  num? statusId,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? startDateAsDiffForHumans,
  String? endDateAsDiffForHumans,
  List<Offices>? offices,
  Service? service,
  List<Recurrences>? recurrences,
  List<Staff>? staff,
}) => Course(  id: id ?? _id,
  title: title ?? _title,
  duration: duration ?? _duration,
  interval: interval ?? _interval,
  startDate: startDate ?? _startDate,
  endDate: endDate ?? _endDate,
  serviceId: serviceId ?? _serviceId,
  priceId: priceId ?? _priceId,
  discountId: discountId ?? _discountId,
  statusId: statusId ?? _statusId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  startDateAsDiffForHumans: startDateAsDiffForHumans ?? _startDateAsDiffForHumans,
  endDateAsDiffForHumans: endDateAsDiffForHumans ?? _endDateAsDiffForHumans,
  offices: offices ?? _offices,
  service: service ?? _service,
  recurrences: recurrences ?? _recurrences,
  staff: staff ?? _staff,
);
  num? get id => _id;
  String? get title => _title;
  num? get duration => _duration;
  String? get interval => _interval;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  num? get serviceId => _serviceId;
  num? get priceId => _priceId;
  num? get discountId => _discountId;
  num? get statusId => _statusId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get startDateAsDiffForHumans => _startDateAsDiffForHumans;
  String? get endDateAsDiffForHumans => _endDateAsDiffForHumans;
  List<Offices>? get offices => _offices;
  Service? get service => _service;
  List<Recurrences>? get recurrences => _recurrences;
  List<Staff>? get staff => _staff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['duration'] = _duration;
    map['interval'] = _interval;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['service_id'] = _serviceId;
    map['price_id'] = _priceId;
    map['discount_id'] = _discountId;
    map['status_id'] = _statusId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['start_date_as_diff_for_humans'] = _startDateAsDiffForHumans;
    map['end_date_as_diff_for_humans'] = _endDateAsDiffForHumans;
    if (_offices != null) {
      map['offices'] = _offices?.map((v) => v.toJson()).toList();
    }
    if (_service != null) {
      map['service'] = _service?.toJson();
    }
    if (_recurrences != null) {
      map['recurrences'] = _recurrences?.map((v) => v.toJson()).toList();
    }
    if (_staff != null) {
      map['staff'] = _staff?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 363
/// first_name : "staff test"
/// last_name : "staff lastname"
/// mobile : "989388852033"
/// date_of_birth : "2024-02-01"
/// address : null
/// emergency_contact_number : 1234548791
/// hes_code : "135456"
/// vaccination_status : 0
/// registration_date : "2024-02-02"
/// references : null
/// email : "staff@gmail.com"
/// username : null
/// preferred_locale : 4
/// headline : null
/// bio : null
/// telegram : null
/// image_id : 4
/// ip : null
/// card_number : null
/// shaba : null
/// status : "active"
/// gender : "non binary"
/// email_verified_at : null
/// created_at : "2024-02-02T06:27:49.000000Z"
/// updated_at : "2024-02-04T14:33:22.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "staff test staff lastname"
/// pivot : {"course_id":70,"staff_id":363}

class Staff {
  Staff({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? mobile, 
      String? dateOfBirth, 
      dynamic address, 
      num? emergencyContactNumber, 
      String? hesCode, 
      num? vaccinationStatus, 
      String? registrationDate, 
      dynamic references, 
      String? email, 
      dynamic username, 
      num? preferredLocale, 
      dynamic headline, 
      dynamic bio, 
      dynamic telegram, 
      num? imageId, 
      dynamic ip, 
      dynamic cardNumber, 
      dynamic shaba, 
      String? status, 
      String? gender, 
      dynamic emailVerifiedAt, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      Pivot? pivot,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _mobile = mobile;
    _dateOfBirth = dateOfBirth;
    _address = address;
    _emergencyContactNumber = emergencyContactNumber;
    _hesCode = hesCode;
    _vaccinationStatus = vaccinationStatus;
    _registrationDate = registrationDate;
    _references = references;
    _email = email;
    _username = username;
    _preferredLocale = preferredLocale;
    _headline = headline;
    _bio = bio;
    _telegram = telegram;
    _imageId = imageId;
    _ip = ip;
    _cardNumber = cardNumber;
    _shaba = shaba;
    _status = status;
    _gender = gender;
    _emailVerifiedAt = emailVerifiedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _pivot = pivot;
}

  Staff.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _mobile = json['mobile'];
    _dateOfBirth = json['date_of_birth'];
    _address = json['address'];
    _emergencyContactNumber = json['emergency_contact_number'];
    _hesCode = json['hes_code'];
    _vaccinationStatus = json['vaccination_status'];
    _registrationDate = json['registration_date'];
    _references = json['references'];
    _email = json['email'];
    _username = json['username'];
    _preferredLocale = json['preferred_locale'];
    _headline = json['headline'];
    _bio = json['bio'];
    _telegram = json['telegram'];
    _imageId = json['image_id'];
    _ip = json['ip'];
    _cardNumber = json['card_number'];
    _shaba = json['shaba'];
    _status = json['status'];
    _gender = json['gender'];
    _emailVerifiedAt = json['email_verified_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _mobile;
  String? _dateOfBirth;
  dynamic _address;
  num? _emergencyContactNumber;
  String? _hesCode;
  num? _vaccinationStatus;
  String? _registrationDate;
  dynamic _references;
  String? _email;
  dynamic _username;
  num? _preferredLocale;
  dynamic _headline;
  dynamic _bio;
  dynamic _telegram;
  num? _imageId;
  dynamic _ip;
  dynamic _cardNumber;
  dynamic _shaba;
  String? _status;
  String? _gender;
  dynamic _emailVerifiedAt;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  Pivot? _pivot;
Staff copyWith({  num? id,
  String? firstName,
  String? lastName,
  String? mobile,
  String? dateOfBirth,
  dynamic address,
  num? emergencyContactNumber,
  String? hesCode,
  num? vaccinationStatus,
  String? registrationDate,
  dynamic references,
  String? email,
  dynamic username,
  num? preferredLocale,
  dynamic headline,
  dynamic bio,
  dynamic telegram,
  num? imageId,
  dynamic ip,
  dynamic cardNumber,
  dynamic shaba,
  String? status,
  String? gender,
  dynamic emailVerifiedAt,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  Pivot? pivot,
}) => Staff(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  mobile: mobile ?? _mobile,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  address: address ?? _address,
  emergencyContactNumber: emergencyContactNumber ?? _emergencyContactNumber,
  hesCode: hesCode ?? _hesCode,
  vaccinationStatus: vaccinationStatus ?? _vaccinationStatus,
  registrationDate: registrationDate ?? _registrationDate,
  references: references ?? _references,
  email: email ?? _email,
  username: username ?? _username,
  preferredLocale: preferredLocale ?? _preferredLocale,
  headline: headline ?? _headline,
  bio: bio ?? _bio,
  telegram: telegram ?? _telegram,
  imageId: imageId ?? _imageId,
  ip: ip ?? _ip,
  cardNumber: cardNumber ?? _cardNumber,
  shaba: shaba ?? _shaba,
  status: status ?? _status,
  gender: gender ?? _gender,
  emailVerifiedAt: emailVerifiedAt ?? _emailVerifiedAt,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  pivot: pivot ?? _pivot,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get mobile => _mobile;
  String? get dateOfBirth => _dateOfBirth;
  dynamic get address => _address;
  num? get emergencyContactNumber => _emergencyContactNumber;
  String? get hesCode => _hesCode;
  num? get vaccinationStatus => _vaccinationStatus;
  String? get registrationDate => _registrationDate;
  dynamic get references => _references;
  String? get email => _email;
  dynamic get username => _username;
  num? get preferredLocale => _preferredLocale;
  dynamic get headline => _headline;
  dynamic get bio => _bio;
  dynamic get telegram => _telegram;
  num? get imageId => _imageId;
  dynamic get ip => _ip;
  dynamic get cardNumber => _cardNumber;
  dynamic get shaba => _shaba;
  String? get status => _status;
  String? get gender => _gender;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  Pivot? get pivot => _pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['mobile'] = _mobile;
    map['date_of_birth'] = _dateOfBirth;
    map['address'] = _address;
    map['emergency_contact_number'] = _emergencyContactNumber;
    map['hes_code'] = _hesCode;
    map['vaccination_status'] = _vaccinationStatus;
    map['registration_date'] = _registrationDate;
    map['references'] = _references;
    map['email'] = _email;
    map['username'] = _username;
    map['preferred_locale'] = _preferredLocale;
    map['headline'] = _headline;
    map['bio'] = _bio;
    map['telegram'] = _telegram;
    map['image_id'] = _imageId;
    map['ip'] = _ip;
    map['card_number'] = _cardNumber;
    map['shaba'] = _shaba;
    map['status'] = _status;
    map['gender'] = _gender;
    map['email_verified_at'] = _emailVerifiedAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    if (_pivot != null) {
      map['pivot'] = _pivot?.toJson();
    }
    return map;
  }

}

/// course_id : 70
/// staff_id : 363

class Pivot {
  Pivot({
      num? courseId, 
      num? staffId,}){
    _courseId = courseId;
    _staffId = staffId;
}

  Pivot.fromJson(dynamic json) {
    _courseId = json['course_id'];
    _staffId = json['staff_id'];
  }
  num? _courseId;
  num? _staffId;
Pivot copyWith({  num? courseId,
  num? staffId,
}) => Pivot(  courseId: courseId ?? _courseId,
  staffId: staffId ?? _staffId,
);
  num? get courseId => _courseId;
  num? get staffId => _staffId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['course_id'] = _courseId;
    map['staff_id'] = _staffId;
    return map;
  }

}

/// id : 105
/// start_date : "2024-02-29"
/// end_date : "2024-02-29"
/// start_time : "12:00:00"
/// end_time : "12:30:00"
/// staff_id : 363
/// course_id : 70
/// duration : 30
/// week_day : 4
/// created_at : "2024-02-28T14:39:08.000000Z"
/// updated_at : "2024-02-28T14:39:08.000000Z"
/// deleted_at : null

class Recurrences {
  Recurrences({
      num? id, 
      String? startDate, 
      String? endDate, 
      String? startTime, 
      String? endTime, 
      num? staffId, 
      num? courseId, 
      num? duration, 
      num? weekDay, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _startDate = startDate;
    _endDate = endDate;
    _startTime = startTime;
    _endTime = endTime;
    _staffId = staffId;
    _courseId = courseId;
    _duration = duration;
    _weekDay = weekDay;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  Recurrences.fromJson(dynamic json) {
    _id = json['id'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _staffId = json['staff_id'];
    _courseId = json['course_id'];
    _duration = json['duration'];
    _weekDay = json['week_day'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
  }
  num? _id;
  String? _startDate;
  String? _endDate;
  String? _startTime;
  String? _endTime;
  num? _staffId;
  num? _courseId;
  num? _duration;
  num? _weekDay;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
Recurrences copyWith({  num? id,
  String? startDate,
  String? endDate,
  String? startTime,
  String? endTime,
  num? staffId,
  num? courseId,
  num? duration,
  num? weekDay,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => Recurrences(  id: id ?? _id,
  startDate: startDate ?? _startDate,
  endDate: endDate ?? _endDate,
  startTime: startTime ?? _startTime,
  endTime: endTime ?? _endTime,
  staffId: staffId ?? _staffId,
  courseId: courseId ?? _courseId,
  duration: duration ?? _duration,
  weekDay: weekDay ?? _weekDay,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  String? get startTime => _startTime;
  String? get endTime => _endTime;
  num? get staffId => _staffId;
  num? get courseId => _courseId;
  num? get duration => _duration;
  num? get weekDay => _weekDay;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['start_time'] = _startTime;
    map['end_time'] = _endTime;
    map['staff_id'] = _staffId;
    map['course_id'] = _courseId;
    map['duration'] = _duration;
    map['week_day'] = _weekDay;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    return map;
  }

}

/// id : 3
/// name : "FONKSİYONEL ANTRENMAN"
/// notes : null
/// created_by : 1
/// status : "Active"
/// category : "Services"
/// created_at : "2023-11-02T10:24:13.000000Z"
/// updated_at : "2023-11-02T10:24:13.000000Z"
/// deleted_at : null
/// locked : true
/// select_box_name : "FONKSİYONEL ANTRENMAN"

class Service {
  Service({
      num? id, 
      String? name, 
      dynamic notes, 
      num? createdBy, 
      String? status, 
      String? category, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      bool? locked, 
      String? selectBoxName,}){
    _id = id;
    _name = name;
    _notes = notes;
    _createdBy = createdBy;
    _status = status;
    _category = category;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _locked = locked;
    _selectBoxName = selectBoxName;
}

  Service.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _notes = json['notes'];
    _createdBy = json['created_by'];
    _status = json['status'];
    _category = json['category'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _locked = json['locked'];
    _selectBoxName = json['select_box_name'];
  }
  num? _id;
  String? _name;
  dynamic _notes;
  num? _createdBy;
  String? _status;
  String? _category;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  bool? _locked;
  String? _selectBoxName;
Service copyWith({  num? id,
  String? name,
  dynamic notes,
  num? createdBy,
  String? status,
  String? category,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  bool? locked,
  String? selectBoxName,
}) => Service(  id: id ?? _id,
  name: name ?? _name,
  notes: notes ?? _notes,
  createdBy: createdBy ?? _createdBy,
  status: status ?? _status,
  category: category ?? _category,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  locked: locked ?? _locked,
  selectBoxName: selectBoxName ?? _selectBoxName,
);
  num? get id => _id;
  String? get name => _name;
  dynamic get notes => _notes;
  num? get createdBy => _createdBy;
  String? get status => _status;
  String? get category => _category;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  bool? get locked => _locked;
  String? get selectBoxName => _selectBoxName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['notes'] = _notes;
    map['created_by'] = _createdBy;
    map['status'] = _status;
    map['category'] = _category;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['locked'] = _locked;
    map['select_box_name'] = _selectBoxName;
    return map;
  }

}

/// id : 1
/// parent_id : null
/// name : "Pilates Oda"
/// office_number : 1
/// notes : null
/// created_by : 1
/// status : "Inactive"
/// category : "Machine"
/// created_at : "2022-07-04T05:20:07.000000Z"
/// updated_at : "2023-11-02T10:22:55.000000Z"
/// deleted_at : null
/// select_box_name : "Pilates Oda"
/// locked : true
/// pivot : {"course_id":70,"office_id":1}

class Offices {
  Offices({
      num? id, 
      dynamic parentId, 
      String? name, 
      num? officeNumber, 
      dynamic notes, 
      num? createdBy, 
      String? status, 
      String? category, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? selectBoxName, 
      bool? locked, 
      Pivot? pivot,}){
    _id = id;
    _parentId = parentId;
    _name = name;
    _officeNumber = officeNumber;
    _notes = notes;
    _createdBy = createdBy;
    _status = status;
    _category = category;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _selectBoxName = selectBoxName;
    _locked = locked;
    _pivot = pivot;
}

  Offices.fromJson(dynamic json) {
    _id = json['id'];
    _parentId = json['parent_id'];
    _name = json['name'];
    _officeNumber = json['office_number'];
    _notes = json['notes'];
    _createdBy = json['created_by'];
    _status = json['status'];
    _category = json['category'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _selectBoxName = json['select_box_name'];
    _locked = json['locked'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
  }
  num? _id;
  dynamic _parentId;
  String? _name;
  num? _officeNumber;
  dynamic _notes;
  num? _createdBy;
  String? _status;
  String? _category;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _selectBoxName;
  bool? _locked;
  Pivot? _pivot;
Offices copyWith({  num? id,
  dynamic parentId,
  String? name,
  num? officeNumber,
  dynamic notes,
  num? createdBy,
  String? status,
  String? category,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? selectBoxName,
  bool? locked,
  Pivot? pivot,
}) => Offices(  id: id ?? _id,
  parentId: parentId ?? _parentId,
  name: name ?? _name,
  officeNumber: officeNumber ?? _officeNumber,
  notes: notes ?? _notes,
  createdBy: createdBy ?? _createdBy,
  status: status ?? _status,
  category: category ?? _category,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  selectBoxName: selectBoxName ?? _selectBoxName,
  locked: locked ?? _locked,
  pivot: pivot ?? _pivot,
);
  num? get id => _id;
  dynamic get parentId => _parentId;
  String? get name => _name;
  num? get officeNumber => _officeNumber;
  dynamic get notes => _notes;
  num? get createdBy => _createdBy;
  String? get status => _status;
  String? get category => _category;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get selectBoxName => _selectBoxName;
  bool? get locked => _locked;
  Pivot? get pivot => _pivot;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['parent_id'] = _parentId;
    map['name'] = _name;
    map['office_number'] = _officeNumber;
    map['notes'] = _notes;
    map['created_by'] = _createdBy;
    map['status'] = _status;
    map['category'] = _category;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['select_box_name'] = _selectBoxName;
    map['locked'] = _locked;
    if (_pivot != null) {
      map['pivot'] = _pivot?.toJson();
    }
    return map;
  }

}

/// course_id : 70
/// office_id : 1



/// id : 4
/// currency : "TRY"
/// translated_name : null

class Currency {
  Currency({
      num? id, 
      String? currency, 
      dynamic translatedName,}){
    _id = id;
    _currency = currency;
    _translatedName = translatedName;
}

  Currency.fromJson(dynamic json) {
    _id = json['id'];
    _currency = json['currency'];
    _translatedName = json['translated_name'];
  }
  num? _id;
  String? _currency;
  dynamic _translatedName;
Currency copyWith({  num? id,
  String? currency,
  dynamic translatedName,
}) => Currency(  id: id ?? _id,
  currency: currency ?? _currency,
  translatedName: translatedName ?? _translatedName,
);
  num? get id => _id;
  String? get currency => _currency;
  dynamic get translatedName => _translatedName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['currency'] = _currency;
    map['translated_name'] = _translatedName;
    return map;
  }

}

/// id : 246
/// payable_amount : "9.00"
/// charged_amount : "10.00"
/// tax_amount : "1.80"
/// discount_amount : "1.00"
/// tax_details : null
/// invoice_id : 45
/// description : null
/// tax_id : null
/// discount_id : null
/// invoiceable_id : 246
/// invoiceable_type : "Scheduling\\Models\\Appointment"
/// name : "Invoice Line"
/// quantity : 1
/// is_free : 0
/// is_complimentary : 0
/// created_at : "2024-02-28T14:39:08.000000Z"
/// updated_at : "2024-02-28T14:39:09.000000Z"
/// deleted_at : null

class InvoiceLines {
  InvoiceLines({
      num? id, 
      String? payableAmount, 
      String? chargedAmount, 
      String? taxAmount, 
      String? discountAmount, 
      dynamic taxDetails, 
      num? invoiceId, 
      dynamic description, 
      dynamic taxId, 
      dynamic discountId, 
      num? invoiceableId, 
      String? invoiceableType, 
      String? name, 
      num? quantity, 
      num? isFree, 
      num? isComplimentary, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt,}){
    _id = id;
    _payableAmount = payableAmount;
    _chargedAmount = chargedAmount;
    _taxAmount = taxAmount;
    _discountAmount = discountAmount;
    _taxDetails = taxDetails;
    _invoiceId = invoiceId;
    _description = description;
    _taxId = taxId;
    _discountId = discountId;
    _invoiceableId = invoiceableId;
    _invoiceableType = invoiceableType;
    _name = name;
    _quantity = quantity;
    _isFree = isFree;
    _isComplimentary = isComplimentary;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
}

  InvoiceLines.fromJson(dynamic json) {
    _id = json['id'];
    _payableAmount = json['payable_amount'];
    _chargedAmount = json['charged_amount'];
    _taxAmount = json['tax_amount'];
    _discountAmount = json['discount_amount'];
    _taxDetails = json['tax_details'];
    _invoiceId = json['invoice_id'];
    _description = json['description'];
    _taxId = json['tax_id'];
    _discountId = json['discount_id'];
    _invoiceableId = json['invoiceable_id'];
    _invoiceableType = json['invoiceable_type'];
    _name = json['name'];
    _quantity = json['quantity'];
    _isFree = json['is_free'];
    _isComplimentary = json['is_complimentary'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
  }
  num? _id;
  String? _payableAmount;
  String? _chargedAmount;
  String? _taxAmount;
  String? _discountAmount;
  dynamic _taxDetails;
  num? _invoiceId;
  dynamic _description;
  dynamic _taxId;
  dynamic _discountId;
  num? _invoiceableId;
  String? _invoiceableType;
  String? _name;
  num? _quantity;
  num? _isFree;
  num? _isComplimentary;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
InvoiceLines copyWith({  num? id,
  String? payableAmount,
  String? chargedAmount,
  String? taxAmount,
  String? discountAmount,
  dynamic taxDetails,
  num? invoiceId,
  dynamic description,
  dynamic taxId,
  dynamic discountId,
  num? invoiceableId,
  String? invoiceableType,
  String? name,
  num? quantity,
  num? isFree,
  num? isComplimentary,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
}) => InvoiceLines(  id: id ?? _id,
  payableAmount: payableAmount ?? _payableAmount,
  chargedAmount: chargedAmount ?? _chargedAmount,
  taxAmount: taxAmount ?? _taxAmount,
  discountAmount: discountAmount ?? _discountAmount,
  taxDetails: taxDetails ?? _taxDetails,
  invoiceId: invoiceId ?? _invoiceId,
  description: description ?? _description,
  taxId: taxId ?? _taxId,
  discountId: discountId ?? _discountId,
  invoiceableId: invoiceableId ?? _invoiceableId,
  invoiceableType: invoiceableType ?? _invoiceableType,
  name: name ?? _name,
  quantity: quantity ?? _quantity,
  isFree: isFree ?? _isFree,
  isComplimentary: isComplimentary ?? _isComplimentary,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
);
  num? get id => _id;
  String? get payableAmount => _payableAmount;
  String? get chargedAmount => _chargedAmount;
  String? get taxAmount => _taxAmount;
  String? get discountAmount => _discountAmount;
  dynamic get taxDetails => _taxDetails;
  num? get invoiceId => _invoiceId;
  dynamic get description => _description;
  dynamic get taxId => _taxId;
  dynamic get discountId => _discountId;
  num? get invoiceableId => _invoiceableId;
  String? get invoiceableType => _invoiceableType;
  String? get name => _name;
  num? get quantity => _quantity;
  num? get isFree => _isFree;
  num? get isComplimentary => _isComplimentary;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['payable_amount'] = _payableAmount;
    map['charged_amount'] = _chargedAmount;
    map['tax_amount'] = _taxAmount;
    map['discount_amount'] = _discountAmount;
    map['tax_details'] = _taxDetails;
    map['invoice_id'] = _invoiceId;
    map['description'] = _description;
    map['tax_id'] = _taxId;
    map['discount_id'] = _discountId;
    map['invoiceable_id'] = _invoiceableId;
    map['invoiceable_type'] = _invoiceableType;
    map['name'] = _name;
    map['quantity'] = _quantity;
    map['is_free'] = _isFree;
    map['is_complimentary'] = _isComplimentary;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    return map;
  }

}

/// id : 5
/// name : {"en":"Not Paid","tr":"ödenmeyen"}
/// slug : "Not Paid"
/// type : "error"
/// created_at : "2023-10-28T11:59:35.000000Z"
/// updated_at : "2023-10-28T11:59:35.000000Z"
/// deleted_at : null
/// translated_name : "Not Paid"

class Status {
  Status({
      num? id, 
      Name? name, 
      String? slug, 
      String? type, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? translatedName,}){
    _id = id;
    _name = name;
    _slug = slug;
    _type = type;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _translatedName = translatedName;
}

  Status.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _slug = json['slug'];
    _type = json['type'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _translatedName = json['translated_name'];
  }
  num? _id;
  Name? _name;
  String? _slug;
  String? _type;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _translatedName;
Status copyWith({  num? id,
  Name? name,
  String? slug,
  String? type,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? translatedName,
}) => Status(  id: id ?? _id,
  name: name ?? _name,
  slug: slug ?? _slug,
  type: type ?? _type,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  translatedName: translatedName ?? _translatedName,
);
  num? get id => _id;
  Name? get name => _name;
  String? get slug => _slug;
  String? get type => _type;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get translatedName => _translatedName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['slug'] = _slug;
    map['type'] = _type;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['translated_name'] = _translatedName;
    return map;
  }

}

/// en : "Not Paid"
/// tr : "ödenmeyen"

class Name {
  Name({
      String? en, 
      String? tr,}){
    _en = en;
    _tr = tr;
}

  Name.fromJson(dynamic json) {
    _en = json['en'];
    _tr = json['tr'];
  }
  String? _en;
  String? _tr;
Name copyWith({  String? en,
  String? tr,
}) => Name(  en: en ?? _en,
  tr: tr ?? _tr,
);
  String? get en => _en;
  String? get tr => _tr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    map['tr'] = _tr;
    return map;
  }

}