/// data : {"staff":[{"title":"ACTIVE CLIENTS","value":2,"icon":"ri-user-add-line","type":"number"},{"title":"DISCONTINUED CLIENTS","value":0,"icon":"ri-user-add-line","type":"number"},{"title":"NEW CLIENTS FOR THIS MONTH","value":0,"icon":"ri-user-add-line","type":"number"},{"title":"ACTIVE COURSES","value":1,"icon":"ri-user-add-line","type":"number"}]}
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class StaffStatisticModel {
  StaffStatisticModel({
      Data? data, 
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

  StaffStatisticModel.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
    _message = json['message'];
    _success = json['success'];
    _locale = json['locale'];
    _timeZone = json['time_zone'];
    _fdow = json['fdow'];
  }
  Data? _data;
  String? _message;
  bool? _success;
  String? _locale;
  String? _timeZone;
  num? _fdow;

  Data? get data => _data;
  String? get message => _message;
  bool? get success => _success;
  String? get locale => _locale;
  String? get timeZone => _timeZone;
  num? get fdow => _fdow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    map['message'] = _message;
    map['success'] = _success;
    map['locale'] = _locale;
    map['time_zone'] = _timeZone;
    map['fdow'] = _fdow;
    return map;
  }

}

/// staff : [{"title":"ACTIVE CLIENTS","value":2,"icon":"ri-user-add-line","type":"number"},{"title":"DISCONTINUED CLIENTS","value":0,"icon":"ri-user-add-line","type":"number"},{"title":"NEW CLIENTS FOR THIS MONTH","value":0,"icon":"ri-user-add-line","type":"number"},{"title":"ACTIVE COURSES","value":1,"icon":"ri-user-add-line","type":"number"}]

class Data {
  Data({
      List<Staff>? staff,}){
    _staff = staff;
}

  Data.fromJson(dynamic json) {
    if (json['staff'] != null) {
      _staff = [];
      json['staff'].forEach((v) {
        _staff?.add(Staff.fromJson(v));
      });
    }
  }
  List<Staff>? _staff;

  List<Staff>? get staff => _staff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_staff != null) {
      map['staff'] = _staff?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// title : "ACTIVE CLIENTS"
/// value : 2
/// icon : "ri-user-add-line"
/// type : "number"

class Staff {
  Staff({
      String? title, 
      num? value, 
      String? icon, 
      String? type,}){
    _title = title;
    _value = value;
    _icon = icon;
    _type = type;
}

  Staff.fromJson(dynamic json) {
    _title = json['title'];
    _value = json['value'];
    _icon = json['icon'];
    _type = json['type'];
  }
  String? _title;
  num? _value;
  String? _icon;
  String? _type;

  String? get title => _title;
  num? get value => _value;
  String? get icon => _icon;
  String? get type => _type;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = _title;
    map['value'] = _value;
    map['icon'] = _icon;
    map['type'] = _type;
    return map;
  }

}