import 'dart:convert';
/// data : [{"id":1,"title":"title1733","start_date":"2023-08-07","end_date":"2023-08-27","office_id":1,"service_id":1,"start_date_as_diff_for_humans":"3 weeks ago","end_date_as_diff_for_humans":"2 days ago","start_time_as_diff_for_humans":"1 second ago","end_time_as_diff_for_humans":"1 second ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client1@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":1,"client_id":6,"status":"Scheduled","status_change_date":null}},{"id":7,"first_name":"Default","last_name":"Client 2","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client2@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":1,"client_id":7,"status":"Scheduled","status_change_date":null}}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":1,"staff_id":4}}],"office":{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Active","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2022-07-04T05:20:07.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true},"service":{"id":1,"name":"Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":true,"select_box_name":"Reformer Pilates"},"invoice":{"id":1,"related_id":1,"related_type":"Scheduling\\Models\\Authorization","total_tax_amount":"4.60","total_discount_amount":"1.00","total_charged_amount":"22.00","total_payable_amount":"23.00","total_payed_amount":"1.00","paid_date":"2023-08-29 11:12:49","created_by":1,"updated_by":1,"currency_id":4,"reference":null,"status_id":4,"receiver_info":null,"sender_info":null,"payment_info":null,"note":null,"created_at":"2023-08-29T11:12:46.000000Z","updated_at":"2023-08-29T11:12:49.000000Z","deleted_at":null,"status":{"id":4,"name":{"en":"Partially Paid","tr":"Kısmen ödenmiş"},"slug":"Partially Paid","type":"info","created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"translated_name":"Partially Paid"},"currency":{"id":4,"currency":"TRY","translated_name":null}}},{"id":2,"title":"title4471","start_date":"2023-08-28","end_date":"2023-09-17","office_id":1,"service_id":1,"start_date_as_diff_for_humans":"1 day ago","end_date_as_diff_for_humans":"2 weeks from now","start_time_as_diff_for_humans":"1 second ago","end_time_as_diff_for_humans":"1 second ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client1@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null}},{"id":7,"first_name":"Default","last_name":"Client 2","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client2@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null}}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4}}],"office":{"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Active","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2022-07-04T05:20:07.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true},"service":{"id":1,"name":"Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":true,"select_box_name":"Reformer Pilates"},"invoice":{"id":1,"related_id":1,"related_type":"Scheduling\\Models\\Authorization","total_tax_amount":"4.60","total_discount_amount":"1.00","total_charged_amount":"22.00","total_payable_amount":"23.00","total_payed_amount":"1.00","paid_date":"2023-08-29 11:12:49","created_by":1,"updated_by":1,"currency_id":4,"reference":null,"status_id":4,"receiver_info":null,"sender_info":null,"payment_info":null,"note":null,"created_at":"2023-08-29T11:12:46.000000Z","updated_at":"2023-08-29T11:12:49.000000Z","deleted_at":null,"status":{"id":4,"name":{"en":"Partially Paid","tr":"Kısmen ödenmiş"},"slug":"Partially Paid","type":"info","created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"translated_name":"Partially Paid"},"currency":{"id":4,"currency":"TRY","translated_name":null}}}]
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

CoursesModel coursesModelFromJson(String str) => CoursesModel.fromJson(json.decode(str));
String coursesModelToJson(CoursesModel data) => json.encode(data.toJson());
class CoursesModel {
  CoursesModel({
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

  CoursesModel.fromJson(dynamic json) {
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
CoursesModel copyWith({  List<Data>? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  num? fdow,
}) => CoursesModel(  data: data ?? _data,
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

/// id : 1
/// title : "title1733"
/// start_date : "2023-08-07"
/// end_date : "2023-08-27"
/// office_id : 1
/// service_id : 1
/// start_date_as_diff_for_humans : "3 weeks ago"
/// end_date_as_diff_for_humans : "2 days ago"
/// start_time_as_diff_for_humans : "1 second ago"
/// end_time_as_diff_for_humans : "1 second ago"
/// clients : [{"id":6,"first_name":"Default","last_name":"Client 1","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client1@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":1,"client_id":6,"status":"Scheduled","status_change_date":null}},{"id":7,"first_name":"Default","last_name":"Client 2","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"client2@client.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":1,"client_id":7,"status":"Scheduled","status_change_date":null}}]
/// staff : [{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":1,"staff_id":4}}]
/// office : {"id":1,"parent_id":null,"name":"Pilates Oda","office_number":1,"notes":null,"created_by":1,"status":"Active","category":"Machine","created_at":"2022-07-04T05:20:07.000000Z","updated_at":"2022-07-04T05:20:07.000000Z","deleted_at":null,"select_box_name":"Pilates Oda","locked":true}
/// service : {"id":1,"name":"Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":true,"select_box_name":"Reformer Pilates"}
/// invoice : {"id":1,"related_id":1,"related_type":"Scheduling\\Models\\Authorization","total_tax_amount":"4.60","total_discount_amount":"1.00","total_charged_amount":"22.00","total_payable_amount":"23.00","total_payed_amount":"1.00","paid_date":"2023-08-29 11:12:49","created_by":1,"updated_by":1,"currency_id":4,"reference":null,"status_id":4,"receiver_info":null,"sender_info":null,"payment_info":null,"note":null,"created_at":"2023-08-29T11:12:46.000000Z","updated_at":"2023-08-29T11:12:49.000000Z","deleted_at":null,"status":{"id":4,"name":{"en":"Partially Paid","tr":"Kısmen ödenmiş"},"slug":"Partially Paid","type":"info","created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"translated_name":"Partially Paid"},"currency":{"id":4,"currency":"TRY","translated_name":null}}

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      num? id, 
      String? title, 
      String? startDate, 
      String? endDate,
    String? startTime,
    String? endTime,
    num? officeId,
      num? serviceId, 
      String? startDateAsDiffForHumans, 
      String? endDateAsDiffForHumans, 
      String? startTimeAsDiffForHumans, 
      String? endTimeAsDiffForHumans, 
      List<Clients>? clients, 
      List<Staff>? staff, 
      Office? office, 
      Service? service, 
      Invoice? invoice,}){
    _id = id;
    _title = title;
    _startDate = startDate;
    _endDate = endDate;
    _startTime = startTime;
    _endTime = endTime;
    _officeId = officeId;
    _serviceId = serviceId;
    _startDateAsDiffForHumans = startDateAsDiffForHumans;
    _endDateAsDiffForHumans = endDateAsDiffForHumans;
    _startTimeAsDiffForHumans = startTimeAsDiffForHumans;
    _endTimeAsDiffForHumans = endTimeAsDiffForHumans;
    _clients = clients;
    _staff = staff;
    _office = office;
    _service = service;
    _invoice = invoice;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _startTime = json['start_time'];
    _endTime = json['end_time'];
    _officeId = json['office_id'];
    _serviceId = json['service_id'];
    _startDateAsDiffForHumans = json['start_date_as_diff_for_humans'];
    _endDateAsDiffForHumans = json['end_date_as_diff_for_humans'];
    _startTimeAsDiffForHumans = json['start_time_as_diff_for_humans'];
    _endTimeAsDiffForHumans = json['end_time_as_diff_for_humans'];
    if (json['clients'] != null) {
      _clients = [];
      json['clients'].forEach((v) {
        _clients?.add(Clients.fromJson(v));
      });
    }
    if (json['staff'] != null) {
      _staff = [];
      json['staff'].forEach((v) {
        _staff?.add(Staff.fromJson(v));
      });
    }
    _office = json['office'] != null ? Office.fromJson(json['office']) : null;
    _service = json['service'] != null ? Service.fromJson(json['service']) : null;
    _invoice = json['invoice'] != null ? Invoice.fromJson(json['invoice']) : null;
  }
  num? _id;
  String? _title;
  String? _startDate;
  String? _endDate;
  String? _startTime;
  String? _endTime;
  num? _officeId;
  num? _serviceId;
  String? _startDateAsDiffForHumans;
  String? _endDateAsDiffForHumans;
  String? _startTimeAsDiffForHumans;
  String? _endTimeAsDiffForHumans;
  List<Clients>? _clients;
  List<Staff>? _staff;
  Office? _office;
  Service? _service;
  Invoice? _invoice;
Data copyWith({  num? id,
  String? title,
  String? startDate,
  String? endDate,
  String? startTime,
  String? endTime,
  num? officeId,
  num? serviceId,
  String? startDateAsDiffForHumans,
  String? endDateAsDiffForHumans,
  String? startTimeAsDiffForHumans,
  String? endTimeAsDiffForHumans,
  List<Clients>? clients,
  List<Staff>? staff,
  Office? office,
  Service? service,
  Invoice? invoice,
}) => Data(  id: id ?? _id,
  title: title ?? _title,
  startDate: startDate ?? _startDate,
  endDate: endDate ?? _endDate,
  endTime: endTime ?? _endTime,
  startTime: startTime ?? _startTime,
  officeId: officeId ?? _officeId,
  serviceId: serviceId ?? _serviceId,
  startDateAsDiffForHumans: startDateAsDiffForHumans ?? _startDateAsDiffForHumans,
  endDateAsDiffForHumans: endDateAsDiffForHumans ?? _endDateAsDiffForHumans,
  startTimeAsDiffForHumans: startTimeAsDiffForHumans ?? _startTimeAsDiffForHumans,
  endTimeAsDiffForHumans: endTimeAsDiffForHumans ?? _endTimeAsDiffForHumans,
  clients: clients ?? _clients,
  staff: staff ?? _staff,
  office: office ?? _office,
  service: service ?? _service,
  invoice: invoice ?? _invoice,
);
  num? get id => _id;
  String? get title => _title;
  String? get startDate => _startDate;
  String? get endDate => _endDate;

  String? get startTime => _startTime;
  String? get endTime => _endTime;

  num? get officeId => _officeId;
  num? get serviceId => _serviceId;
  String? get startDateAsDiffForHumans => _startDateAsDiffForHumans;
  String? get endDateAsDiffForHumans => _endDateAsDiffForHumans;
  String? get startTimeAsDiffForHumans => _startTimeAsDiffForHumans;
  String? get endTimeAsDiffForHumans => _endTimeAsDiffForHumans;
  List<Clients>? get clients => _clients;
  List<Staff>? get staff => _staff;
  Office? get office => _office;
  Service? get service => _service;
  Invoice? get invoice => _invoice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['office_id'] = _officeId;
    map['service_id'] = _serviceId;
    map['start_date_as_diff_for_humans'] = _startDateAsDiffForHumans;
    map['end_date_as_diff_for_humans'] = _endDateAsDiffForHumans;
    map['start_time_as_diff_for_humans'] = _startTimeAsDiffForHumans;
    map['end_time_as_diff_for_humans'] = _endTimeAsDiffForHumans;
    if (_clients != null) {
      map['clients'] = _clients?.map((v) => v.toJson()).toList();
    }
    if (_staff != null) {
      map['staff'] = _staff?.map((v) => v.toJson()).toList();
    }
    if (_office != null) {
      map['office'] = _office?.toJson();
    }
    if (_service != null) {
      map['service'] = _service?.toJson();
    }
    if (_invoice != null) {
      map['invoice'] = _invoice?.toJson();
    }
    return map;
  }

}

/// id : 1
/// related_id : 1
/// related_type : "Scheduling\\Models\\Authorization"
/// total_tax_amount : "4.60"
/// total_discount_amount : "1.00"
/// total_charged_amount : "22.00"
/// total_payable_amount : "23.00"
/// total_payed_amount : "1.00"
/// paid_date : "2023-08-29 11:12:49"
/// created_by : 1
/// updated_by : 1
/// currency_id : 4
/// reference : null
/// status_id : 4
/// receiver_info : null
/// sender_info : null
/// payment_info : null
/// note : null
/// created_at : "2023-08-29T11:12:46.000000Z"
/// updated_at : "2023-08-29T11:12:49.000000Z"
/// deleted_at : null
/// status : {"id":4,"name":{"en":"Partially Paid","tr":"Kısmen ödenmiş"},"slug":"Partially Paid","type":"info","created_at":"2023-08-29T11:12:45.000000Z","updated_at":"2023-08-29T11:12:45.000000Z","deleted_at":null,"translated_name":"Partially Paid"}
/// currency : {"id":4,"currency":"TRY","translated_name":null}

Invoice invoiceFromJson(String str) => Invoice.fromJson(json.decode(str));
String invoiceToJson(Invoice data) => json.encode(data.toJson());
class Invoice {
  Invoice({
      num? id, 
      num? relatedId, 
      String? relatedType, 
      String? totalTaxAmount, 
      String? totalDiscountAmount, 
      String? totalChargedAmount, 
      String? totalPayableAmount, 
      String? totalPayedAmount, 
      String? paidDate, 
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
      Currency? currency,}){
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
    _currency = currency;
}

  Invoice.fromJson(dynamic json) {
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
    _currency = json['currency'] != null ? Currency.fromJson(json['currency']) : null;
  }
  num? _id;
  num? _relatedId;
  String? _relatedType;
  String? _totalTaxAmount;
  String? _totalDiscountAmount;
  String? _totalChargedAmount;
  String? _totalPayableAmount;
  String? _totalPayedAmount;
  String? _paidDate;
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
  Currency? _currency;
Invoice copyWith({  num? id,
  num? relatedId,
  String? relatedType,
  String? totalTaxAmount,
  String? totalDiscountAmount,
  String? totalChargedAmount,
  String? totalPayableAmount,
  String? totalPayedAmount,
  String? paidDate,
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
  Currency? currency,
}) => Invoice(  id: id ?? _id,
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
  currency: currency ?? _currency,
);
  num? get id => _id;
  num? get relatedId => _relatedId;
  String? get relatedType => _relatedType;
  String? get totalTaxAmount => _totalTaxAmount;
  String? get totalDiscountAmount => _totalDiscountAmount;
  String? get totalChargedAmount => _totalChargedAmount;
  String? get totalPayableAmount => _totalPayableAmount;
  String? get totalPayedAmount => _totalPayedAmount;
  String? get paidDate => _paidDate;
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
  Currency? get currency => _currency;

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
    if (_currency != null) {
      map['currency'] = _currency?.toJson();
    }
    return map;
  }

}

/// id : 4
/// currency : "TRY"
/// translated_name : null

Currency currencyFromJson(String str) => Currency.fromJson(json.decode(str));
String currencyToJson(Currency data) => json.encode(data.toJson());
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

/// id : 4
/// name : {"en":"Partially Paid","tr":"Kısmen ödenmiş"}
/// slug : "Partially Paid"
/// type : "info"
/// created_at : "2023-08-29T11:12:45.000000Z"
/// updated_at : "2023-08-29T11:12:45.000000Z"
/// deleted_at : null
/// translated_name : "Partially Paid"

Status statusFromJson(String str) => Status.fromJson(json.decode(str));
String statusToJson(Status data) => json.encode(data.toJson());
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

/// en : "Partially Paid"
/// tr : "Kısmen ödenmiş"

Name nameFromJson(String str) => Name.fromJson(json.decode(str));
String nameToJson(Name data) => json.encode(data.toJson());
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

/// id : 1
/// name : "Reformer Pilates"
/// notes : null
/// created_by : 1
/// status : "Active"
/// category : "Services"
/// created_at : "2022-07-04T05:19:19.000000Z"
/// updated_at : "2022-07-04T05:19:19.000000Z"
/// deleted_at : null
/// locked : true
/// select_box_name : "Reformer Pilates"

Service serviceFromJson(String str) => Service.fromJson(json.decode(str));
String serviceToJson(Service data) => json.encode(data.toJson());
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
/// status : "Active"
/// category : "Machine"
/// created_at : "2022-07-04T05:20:07.000000Z"
/// updated_at : "2022-07-04T05:20:07.000000Z"
/// deleted_at : null
/// select_box_name : "Pilates Oda"
/// locked : true

Office officeFromJson(String str) => Office.fromJson(json.decode(str));
String officeToJson(Office data) => json.encode(data.toJson());
class Office {
  Office({
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
      bool? locked,}){
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
}

  Office.fromJson(dynamic json) {
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
Office copyWith({  num? id,
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
}) => Office(  id: id ?? _id,
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
    return map;
  }

}

/// id : 4
/// first_name : "Default"
/// last_name : "Staff"
/// mobile : null
/// date_of_birth : null
/// address : null
/// emergency_contact_number : null
/// hes_code : null
/// vaccination_status : 0
/// registration_date : null
/// references : null
/// email : "default@staff.com"
/// username : null
/// preferred_locale : 1
/// headline : null
/// bio : null
/// telegram : null
/// image_id : 1
/// ip : null
/// card_number : null
/// shaba : null
/// status : "active"
/// gender : "man"
/// email_verified_at : null
/// created_at : "2023-08-29T11:12:45.000000Z"
/// updated_at : "2023-08-29T11:12:45.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// pivot : {"course_id":1,"staff_id":4}

Staff staffFromJson(String str) => Staff.fromJson(json.decode(str));
String staffToJson(Staff data) => json.encode(data.toJson());
class Staff {
  Staff({
      num? id, 
      String? firstName, 
      String? lastName, 
      dynamic mobile, 
      dynamic dateOfBirth, 
      dynamic address, 
      dynamic emergencyContactNumber, 
      dynamic hesCode, 
      num? vaccinationStatus, 
      dynamic registrationDate, 
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
  dynamic _mobile;
  dynamic _dateOfBirth;
  dynamic _address;
  dynamic _emergencyContactNumber;
  dynamic _hesCode;
  num? _vaccinationStatus;
  dynamic _registrationDate;
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
  dynamic mobile,
  dynamic dateOfBirth,
  dynamic address,
  dynamic emergencyContactNumber,
  dynamic hesCode,
  num? vaccinationStatus,
  dynamic registrationDate,
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
  dynamic get mobile => _mobile;
  dynamic get dateOfBirth => _dateOfBirth;
  dynamic get address => _address;
  dynamic get emergencyContactNumber => _emergencyContactNumber;
  dynamic get hesCode => _hesCode;
  num? get vaccinationStatus => _vaccinationStatus;
  dynamic get registrationDate => _registrationDate;
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

/// course_id : 1
/// staff_id : 4

Pivot pivotFromJson(String str) => Pivot.fromJson(json.decode(str));
String pivotToJson(Pivot data) => json.encode(data.toJson());
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

/// id : 6
/// first_name : "Default"
/// last_name : "Client 1"
/// mobile : null
/// date_of_birth : null
/// address : null
/// emergency_contact_number : null
/// hes_code : null
/// vaccination_status : 0
/// registration_date : null
/// references : null
/// email : "client1@client.com"
/// username : null
/// preferred_locale : 1
/// headline : null
/// bio : null
/// telegram : null
/// image_id : 1
/// ip : null
/// card_number : null
/// shaba : null
/// status : "active"
/// gender : "man"
/// email_verified_at : null
/// created_at : "2023-08-29T11:12:45.000000Z"
/// updated_at : "2023-08-29T11:12:45.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Client 1"
/// pivot : {"course_id":1,"client_id":6,"status":"Scheduled","status_change_date":null}

Clients clientsFromJson(String str) => Clients.fromJson(json.decode(str));
String clientsToJson(Clients data) => json.encode(data.toJson());
class Clients {
  Clients({
      num? id, 
      String? firstName, 
      String? lastName, 
      dynamic mobile, 
      dynamic dateOfBirth, 
      dynamic address, 
      dynamic emergencyContactNumber, 
      dynamic hesCode, 
      num? vaccinationStatus, 
      dynamic registrationDate, 
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

  Clients.fromJson(dynamic json) {
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
  dynamic _mobile;
  dynamic _dateOfBirth;
  dynamic _address;
  dynamic _emergencyContactNumber;
  dynamic _hesCode;
  num? _vaccinationStatus;
  dynamic _registrationDate;
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
Clients copyWith({  num? id,
  String? firstName,
  String? lastName,
  dynamic mobile,
  dynamic dateOfBirth,
  dynamic address,
  dynamic emergencyContactNumber,
  dynamic hesCode,
  num? vaccinationStatus,
  dynamic registrationDate,
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
}) => Clients(  id: id ?? _id,
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
  dynamic get mobile => _mobile;
  dynamic get dateOfBirth => _dateOfBirth;
  dynamic get address => _address;
  dynamic get emergencyContactNumber => _emergencyContactNumber;
  dynamic get hesCode => _hesCode;
  num? get vaccinationStatus => _vaccinationStatus;
  dynamic get registrationDate => _registrationDate;
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



