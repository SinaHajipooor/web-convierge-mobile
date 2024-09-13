/// data : [{"id":"8f11e09a-bff3-477e-b562-34b6f7601214","type":"Common\\Notification\\Notifications\\DatabaseNotification","notifiable_type":"User\\Models\\User","notifiable_id":6,"data_notif":{"type":"success","title":"INTERVIEW WITHOUT CHARGE","message":"Dear member; In line with your request on 2023-10-20, your pre-registration process has been completed by making an appointment for Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday 10:00-10:20day/hour. In order to complete the final registration process and start the classes, the full payment must be made with one of the CASH/CREDIT CARD/EFT/TRANSFER payment options until the beginning of the membership. You must submit your appointment cancellation and change requests at least 3 hours before your appointment time so that the course is not considered to be given by the instructor. You are kindly requested to be at the studio 10 minutes before the course. STAY WITH SPORTS! Contact: 0258 213 19 91/Whatsapp:0507 678 16 91"},"read_at":null,"created_at":"2023-10-20T17:52:54.000000Z","updated_at":"2023-10-20T17:52:54.000000Z"},{"id":"73ff6aa3-d921-40a7-832c-826966f40ccc","type":"Common\\Notification\\Notifications\\DatabaseNotification","notifiable_type":"User\\Models\\User","notifiable_id":6,"data_notif":{"type":"success","title":"APPOINTMENT CANCELED","message":"Dear member; Your appointment was canceled on 2023-09-25 09:00. STAY WITH SPORTS! Contact: 0258 213 19 91/Whatsapp:0507 678 16 91"},"read_at":null,"created_at":"2023-10-20T17:52:33.000000Z","updated_at":"2023-10-20T17:52:33.000000Z"},{"id":"9010016f-57c9-472b-b2b1-6acbf22e3875","type":"Common\\Notification\\Notifications\\DatabaseNotification","notifiable_type":"User\\Models\\User","notifiable_id":6,"data_notif":{"type":"success","title":"INTERVIEW WITHOUT CHARGE","message":"Dear member; In line with your request on 2023-10-20, your pre-registration process has been completed by making an appointment for Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday 08:00-08:20day/hour. In order to complete the final registration process and start the classes, the full payment must be made with one of the CASH/CREDIT CARD/EFT/TRANSFER payment options until the beginning of the membership. You must submit your appointment cancellation and change requests at least 3 hours before your appointment time so that the course is not considered to be given by the instructor. You are kindly requested to be at the studio 10 minutes before the course. STAY WITH SPORTS! Contact: 0258 213 19 91/Whatsapp:0507 678 16 91"},"read_at":null,"created_at":"2023-10-20T17:52:26.000000Z","updated_at":"2023-10-20T17:52:26.000000Z"}]
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class NotificationsModel {
  NotificationsModel({
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

  NotificationsModel.fromJson(dynamic json) {
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

/// id : "8f11e09a-bff3-477e-b562-34b6f7601214"
/// type : "Common\\Notification\\Notifications\\DatabaseNotification"
/// notifiable_type : "User\\Models\\User"
/// notifiable_id : 6
/// data_notif : {"type":"success","title":"INTERVIEW WITHOUT CHARGE","message":"Dear member; In line with your request on 2023-10-20, your pre-registration process has been completed by making an appointment for Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday 10:00-10:20day/hour. In order to complete the final registration process and start the classes, the full payment must be made with one of the CASH/CREDIT CARD/EFT/TRANSFER payment options until the beginning of the membership. You must submit your appointment cancellation and change requests at least 3 hours before your appointment time so that the course is not considered to be given by the instructor. You are kindly requested to be at the studio 10 minutes before the course. STAY WITH SPORTS! Contact: 0258 213 19 91/Whatsapp:0507 678 16 91"}
/// read_at : null
/// created_at : "2023-10-20T17:52:54.000000Z"
/// updated_at : "2023-10-20T17:52:54.000000Z"

class Data {
  Data({
      String? id, 
      String? type, 
      String? notifiableType, 
      num? notifiableId, 
      DataNotif? dataNotif, 
      dynamic readAt, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _type = type;
    _notifiableType = notifiableType;
    _notifiableId = notifiableId;
    _dataNotif = dataNotif;
    _readAt = readAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _type = json['type'];
    _notifiableType = json['notifiable_type'];
    _notifiableId = json['notifiable_id'];
    _dataNotif = json['data'] != null ? DataNotif.fromJson(json['data']) : null;
    _readAt = json['read_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  String? _id;
  String? _type;
  String? _notifiableType;
  num? _notifiableId;
  DataNotif? _dataNotif;
  dynamic _readAt;
  String? _createdAt;
  String? _updatedAt;

  String? get id => _id;
  String? get type => _type;
  String? get notifiableType => _notifiableType;
  num? get notifiableId => _notifiableId;
  DataNotif? get dataNotif => _dataNotif;
  dynamic get readAt => _readAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['type'] = _type;
    map['notifiable_type'] = _notifiableType;
    map['notifiable_id'] = _notifiableId;
    if (_dataNotif != null) {
      map['data_notif'] = _dataNotif?.toJson();
    }
    map['read_at'] = _readAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// type : "success"
/// title : "INTERVIEW WITHOUT CHARGE"
/// message : "Dear member; In line with your request on 2023-10-20, your pre-registration process has been completed by making an appointment for Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday 10:00-10:20day/hour. In order to complete the final registration process and start the classes, the full payment must be made with one of the CASH/CREDIT CARD/EFT/TRANSFER payment options until the beginning of the membership. You must submit your appointment cancellation and change requests at least 3 hours before your appointment time so that the course is not considered to be given by the instructor. You are kindly requested to be at the studio 10 minutes before the course. STAY WITH SPORTS! Contact: 0258 213 19 91/Whatsapp:0507 678 16 91"

class DataNotif {
  DataNotif({
      String? type, 
      String? title, 
      String? message,}){
    _type = type;
    _title = title;
    _message = message;
}

  DataNotif.fromJson(dynamic json) {
    _type = json['type'];
    _title = json['title'];
    _message = json['message'];
  }
  String? _type;
  String? _title;
  String? _message;

  String? get type => _type;
  String? get title => _title;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['type'] = _type;
    map['title'] = _title;
    map['message'] = _message;
    return map;
  }

}