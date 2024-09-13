/// data : {"services":[{"id":1,"name":"Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":true,"select_box_name":"Reformer Pilates"},{"id":2,"name":"Functional Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":false,"select_box_name":"Functional Reformer Pilates"}]}
/// message : ""
/// success : true
/// locale : "tr"
/// time_zone : "NA"
/// fdow : 1
///
///

class ServiceModel {
  ServiceModel({
    Data? data,
    String? message,
    bool? success,
    String? locale,
    String? timeZone,
    int? fdow,
  }) {
    _data = data;
    _message = message;
    _success = success;
    _locale = locale;
    _timeZone = timeZone;
    _fdow = fdow;
  }

  ServiceModel.fromJson(dynamic json) {
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
  int? _fdow;
  ServiceModel copyWith({
    Data? data,
    String? message,
    bool? success,
    String? locale,
    String? timeZone,
    int? fdow,
  }) =>
      ServiceModel(
        data: data ?? _data,
        message: message ?? _message,
        success: success ?? _success,
        locale: locale ?? _locale,
        timeZone: timeZone ?? _timeZone,
        fdow: fdow ?? _fdow,
      );
  Data? get data => _data;
  String? get message => _message;
  bool? get success => _success;
  String? get locale => _locale;
  String? get timeZone => _timeZone;
  int? get fdow => _fdow;

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

/// services : [{"id":1,"name":"Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":true,"select_box_name":"Reformer Pilates"},{"id":2,"name":"Functional Reformer Pilates","notes":null,"created_by":1,"status":"Active","category":"Services","created_at":"2022-07-04T05:19:19.000000Z","updated_at":"2022-07-04T05:19:19.000000Z","deleted_at":null,"locked":false,"select_box_name":"Functional Reformer Pilates"}]

class Data {
  Data({
    List<Services>? services,
  }) {
    _services = services;
  }

  Data.fromJson(dynamic json) {
    if (json['services'] != null) {
      _services = [];
      json['services'].forEach((v) {
        _services?.add(Services.fromJson(v));
      });
    }
  }
  List<Services>? _services;
  Data copyWith({
    List<Services>? services,
  }) =>
      Data(
        services: services ?? _services,
      );
  List<Services>? get services => _services;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_services != null) {
      map['services'] = _services?.map((v) => v.toJson()).toList();
    }
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

class Services {
  Services({
    int? id,
    String? name,
    dynamic notes,
    int? createdBy,
    String? status,
    String? category,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    bool? locked,
    String? selectBoxName,
  }) {
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

  Services.fromJson(dynamic json) {
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
  int? _id;
  String? _name;
  dynamic _notes;
  int? _createdBy;
  String? _status;
  String? _category;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  bool? _locked;
  String? _selectBoxName;
  Services copyWith({
    int? id,
    String? name,
    dynamic notes,
    int? createdBy,
    String? status,
    String? category,
    String? createdAt,
    String? updatedAt,
    dynamic deletedAt,
    bool? locked,
    String? selectBoxName,
  }) =>
      Services(
        id: id ?? _id,
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
  int? get id => _id;
  String? get name => _name;
  dynamic get notes => _notes;
  int? get createdBy => _createdBy;
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
