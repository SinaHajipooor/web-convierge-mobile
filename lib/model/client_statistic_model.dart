/// data : {"frozeCourse":false,"course":[{"title":"NUMBER OF SESSIONS IN THE PACKAGE","value":21,"icon":"ri-user-add-line","type":"number"},{"title":"NUMBER OF USED SESSIONS","value":1,"icon":"ri-user-add-line","type":"number"},{"title":"NUMBER OF REMAINING SESSIONS","value":20,"icon":"ri-user-add-line","type":"number"},{"title":"REMAINING DURATION UNTIL THE PACKAGE ENDS","value":"2023-10-29","icon":"ri-user-add-line","type":"date"}]}
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class ClientStatisticModel {
  ClientStatisticModel({
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

  ClientStatisticModel.fromJson(dynamic json) {
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

/// frozeCourse : false
/// course : [{"title":"NUMBER OF SESSIONS IN THE PACKAGE","value":21,"icon":"ri-user-add-line","type":"number"},{"title":"NUMBER OF USED SESSIONS","value":1,"icon":"ri-user-add-line","type":"number"},{"title":"NUMBER OF REMAINING SESSIONS","value":20,"icon":"ri-user-add-line","type":"number"},{"title":"REMAINING DURATION UNTIL THE PACKAGE ENDS","value":"2023-10-29","icon":"ri-user-add-line","type":"date"}]

class Data {
  Data({
      bool? frozeCourse, 
      List<Course>? course,}){
    _frozeCourse = frozeCourse;
    _course = course;
}

  Data.fromJson(dynamic json) {
    _frozeCourse = json['frozeCourse'];
    if (json['course'] != null) {
      _course = [];
      json['course'].forEach((v) {
        _course?.add(Course.fromJson(v));
      });
    }
  }
  bool? _frozeCourse;
  List<Course>? _course;

  bool? get frozeCourse => _frozeCourse;
  List<Course>? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['frozeCourse'] = _frozeCourse;
    if (_course != null) {
      map['course'] = _course?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// title : "NUMBER OF SESSIONS IN THE PACKAGE"
/// value : 21
/// icon : "ri-user-add-line"
/// type : "number"

class Course {
  Course({
      String? title, 
      String? value,
      String? icon, 
      String? type,}){
    _title = title;
    _value = value;
    _icon = icon;
    _type = type;
}

  Course.fromJson(dynamic json) {
    _title = json['title'];
    _value = json['value'].toString();
    _icon = json['icon'];
    _type = json['type'];
  }
  String? _title;
  String? _value;
  String? _icon;
  String? _type;

  String? get title => _title;
  String? get value => _value;
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