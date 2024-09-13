/// data : [{"name":"English","code":"en","iso":"en-US","dir":"ltr"},{"name":"Turkish","code":"tr","iso":"tr-TR","dir":"ltr"},{"name":"فارسی","code":"fa","iso":"fa-IR","dir":"rtl"}]
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class ListLanguageModel {
  ListLanguageModel({
      List<Data>? data, 
      String? message, 
      bool? success, 
      String? locale, 
      String? timeZone, 
      int? fdow,}){
    _data = data;
    _message = message;
    _success = success;
    _locale = locale;
    _timeZone = timeZone;
    _fdow = fdow;
}

  ListLanguageModel.fromJson(dynamic json) {
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
  int? _fdow;
ListLanguageModel copyWith({  List<Data>? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  int? fdow,
}) => ListLanguageModel(  data: data ?? _data,
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
  int? get fdow => _fdow;

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

/// name : "English"
/// code : "en"
/// iso : "en-US"
/// dir : "ltr"

class Data {
  Data({
      String? name, 
      String? code, 
      String? iso, 
      String? dir,}){
    _name = name;
    _code = code;
    _iso = iso;
    _dir = dir;
}

  Data.fromJson(dynamic json) {
    _name = json['name'];
    _code = json['code'];
    _iso = json['iso'];
    _dir = json['dir'];
  }
  String? _name;
  String? _code;
  String? _iso;
  String? _dir;
Data copyWith({  String? name,
  String? code,
  String? iso,
  String? dir,
}) => Data(  name: name ?? _name,
  code: code ?? _code,
  iso: iso ?? _iso,
  dir: dir ?? _dir,
);
  String? get name => _name;
  String? get code => _code;
  String? get iso => _iso;
  String? get dir => _dir;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['code'] = _code;
    map['iso'] = _iso;
    map['dir'] = _dir;
    return map;
  }

}