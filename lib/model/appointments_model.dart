/// data : {"daterange":["2023-11-17"],"allAppointments":[{"id":56,"start_date":"2023-11-17","start_time":"10:00:00","end_date":"2023-11-17","end_time":"10:20:00","sched_start":"2023-11-17 10:00:00","sched_end":"2023-11-17 10:20:00","week_day":5,"actual_start":null,"actual_end":null,"latenotice":0,"edited":0,"duration_act":null,"duration_sched":"20.00","expense_notes":null,"notes":null,"created_by":1,"office_notes":null,"assignment_id":19,"service_id":1,"wage_id":null,"price_id":22,"office_id":1,"auth_id":3,"course_id":2,"client_id":6,"staff_id":4,"status_id":1,"billable":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"groupKey":"2-5-2023-11-17 10:00:00-2023-11-17 10:20:00-1-1-1-22","formatted_start_time":"10:00 AM","formatted_end_time":"10:20 AM","appointment_ids":[56,77],"all_clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","image":null}],"all_staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null}],"dayofweek":"Fri","FormattedStartTime":"10:00 AM","FormattedStartDate":"2023-11-17","FormattedEndTime":"10:20 AM","FormattedEndDate":"2023-11-17","status":{"id":1,"name":{"en":"Scheduled","tr":"planlanmış"},"slug":"Scheduled","type":"success","created_at":"2023-11-11T19:56:15.000000Z","updated_at":"2023-11-11T19:56:15.000000Z","deleted_at":null,"translated_name":"Scheduled"},"staff":{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null},"price":{"id":22,"charge_rate":1,"charge_units":"20.00","service_id":1,"formatted_charge_units":"20:00"},"office":{"id":1,"name":"Pilates Oda","select_box_name":"Pilates Oda","locked":true},"service":{"id":1,"name":"Reformer Pilates","locked":true,"select_box_name":"Reformer Pilates"},"client":{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null},"authorization":{"id":3,"notes":null,"client_id":6,"created_by":1,"updated_by":1,"service_id":1,"course_id":2,"total_minutes":"420.00","status_id":1,"office_notes":null,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"laravel_through_key":19,"course":{"id":2,"start_time":"10:00:00","title":"title6196","end_time":"10:20:00","duration":20,"interval":"1","start_date":"2023-11-06","end_date":"2023-11-26","monday":1,"tuesday":1,"wednesday":1,"thursday":1,"friday":1,"saturday":1,"sunday":1,"office_id":1,"service_id":1,"price_id":22,"discount_id":4,"status_id":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"1 week ago","end_date_as_diff_for_humans":"1 week from now","start_time_as_diff_for_humans":"3 hours ago","end_time_as_diff_for_humans":"3 hours ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null},"image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null},"image":null}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4},"image":null}]}}}]}
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class AppointmentsModel {
  AppointmentsModel({
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

  AppointmentsModel.fromJson(dynamic json) {
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
AppointmentsModel copyWith({  Data? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  num? fdow,
}) => AppointmentsModel(  data: data ?? _data,
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

/// daterange : ["2023-11-17"]
/// allAppointments : [{"id":56,"start_date":"2023-11-17","start_time":"10:00:00","end_date":"2023-11-17","end_time":"10:20:00","sched_start":"2023-11-17 10:00:00","sched_end":"2023-11-17 10:20:00","week_day":5,"actual_start":null,"actual_end":null,"latenotice":0,"edited":0,"duration_act":null,"duration_sched":"20.00","expense_notes":null,"notes":null,"created_by":1,"office_notes":null,"assignment_id":19,"service_id":1,"wage_id":null,"price_id":22,"office_id":1,"auth_id":3,"course_id":2,"client_id":6,"staff_id":4,"status_id":1,"billable":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"groupKey":"2-5-2023-11-17 10:00:00-2023-11-17 10:20:00-1-1-1-22","formatted_start_time":"10:00 AM","formatted_end_time":"10:20 AM","appointment_ids":[56,77],"all_clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","image":null}],"all_staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null}],"dayofweek":"Fri","FormattedStartTime":"10:00 AM","FormattedStartDate":"2023-11-17","FormattedEndTime":"10:20 AM","FormattedEndDate":"2023-11-17","status":{"id":1,"name":{"en":"Scheduled","tr":"planlanmış"},"slug":"Scheduled","type":"success","created_at":"2023-11-11T19:56:15.000000Z","updated_at":"2023-11-11T19:56:15.000000Z","deleted_at":null,"translated_name":"Scheduled"},"staff":{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null},"price":{"id":22,"charge_rate":1,"charge_units":"20.00","service_id":1,"formatted_charge_units":"20:00"},"office":{"id":1,"name":"Pilates Oda","select_box_name":"Pilates Oda","locked":true},"service":{"id":1,"name":"Reformer Pilates","locked":true,"select_box_name":"Reformer Pilates"},"client":{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null},"authorization":{"id":3,"notes":null,"client_id":6,"created_by":1,"updated_by":1,"service_id":1,"course_id":2,"total_minutes":"420.00","status_id":1,"office_notes":null,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"laravel_through_key":19,"course":{"id":2,"start_time":"10:00:00","title":"title6196","end_time":"10:20:00","duration":20,"interval":"1","start_date":"2023-11-06","end_date":"2023-11-26","monday":1,"tuesday":1,"wednesday":1,"thursday":1,"friday":1,"saturday":1,"sunday":1,"office_id":1,"service_id":1,"price_id":22,"discount_id":4,"status_id":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"1 week ago","end_date_as_diff_for_humans":"1 week from now","start_time_as_diff_for_humans":"3 hours ago","end_time_as_diff_for_humans":"3 hours ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null},"image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null},"image":null}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4},"image":null}]}}}]

class Data {
  Data({
      List<String>? daterange, 
      List<AllAppointments>? allAppointments,}){
    _daterange = daterange;
    _allAppointments = allAppointments;
}

  Data.fromJson(dynamic json) {
    _daterange = json['daterange'] != null ? json['daterange'].cast<String>() : [];
    if (json['allAppointments'] != null) {
      _allAppointments = [];
      json['allAppointments'].forEach((v) {
        _allAppointments?.add(AllAppointments.fromJson(v));
      });
    }
  }
  List<String>? _daterange;
  List<AllAppointments>? _allAppointments;
Data copyWith({  List<String>? daterange,
  List<AllAppointments>? allAppointments,
}) => Data(  daterange: daterange ?? _daterange,
  allAppointments: allAppointments ?? _allAppointments,
);
  List<String>? get daterange => _daterange;
  List<AllAppointments>? get allAppointments => _allAppointments;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['daterange'] = _daterange;
    if (_allAppointments != null) {
      map['allAppointments'] = _allAppointments?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 56
/// start_date : "2023-11-17"
/// start_time : "10:00:00"
/// end_date : "2023-11-17"
/// end_time : "10:20:00"
/// sched_start : "2023-11-17 10:00:00"
/// sched_end : "2023-11-17 10:20:00"
/// week_day : 5
/// actual_start : null
/// actual_end : null
/// latenotice : 0
/// edited : 0
/// duration_act : null
/// duration_sched : "20.00"
/// expense_notes : null
/// notes : null
/// created_by : 1
/// office_notes : null
/// assignment_id : 19
/// service_id : 1
/// wage_id : null
/// price_id : 22
/// office_id : 1
/// auth_id : 3
/// course_id : 2
/// client_id : 6
/// staff_id : 4
/// status_id : 1
/// billable : 1
/// created_at : "2023-11-11T19:56:24.000000Z"
/// updated_at : "2023-11-11T19:56:24.000000Z"
/// deleted_at : null
/// groupKey : "2-5-2023-11-17 10:00:00-2023-11-17 10:20:00-1-1-1-22"
/// formatted_start_time : "10:00 AM"
/// formatted_end_time : "10:20 AM"
/// appointment_ids : [56,77]
/// all_clients : [{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","image":null}]
/// all_staff : [{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null}]
/// dayofweek : "Fri"
/// FormattedStartTime : "10:00 AM"
/// FormattedStartDate : "2023-11-17"
/// FormattedEndTime : "10:20 AM"
/// FormattedEndDate : "2023-11-17"
/// status : {"id":1,"name":{"en":"Scheduled","tr":"planlanmış"},"slug":"Scheduled","type":"success","created_at":"2023-11-11T19:56:15.000000Z","updated_at":"2023-11-11T19:56:15.000000Z","deleted_at":null,"translated_name":"Scheduled"}
/// staff : {"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":null}
/// price : {"id":22,"charge_rate":1,"charge_units":"20.00","service_id":1,"formatted_charge_units":"20:00"}
/// office : {"id":1,"name":"Pilates Oda","select_box_name":"Pilates Oda","locked":true}
/// service : {"id":1,"name":"Reformer Pilates","locked":true,"select_box_name":"Reformer Pilates"}
/// client : {"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","image":null}
/// authorization : {"id":3,"notes":null,"client_id":6,"created_by":1,"updated_by":1,"service_id":1,"course_id":2,"total_minutes":"420.00","status_id":1,"office_notes":null,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"laravel_through_key":19,"course":{"id":2,"start_time":"10:00:00","title":"title6196","end_time":"10:20:00","duration":20,"interval":"1","start_date":"2023-11-06","end_date":"2023-11-26","monday":1,"tuesday":1,"wednesday":1,"thursday":1,"friday":1,"saturday":1,"sunday":1,"office_id":1,"service_id":1,"price_id":22,"discount_id":4,"status_id":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"1 week ago","end_date_as_diff_for_humans":"1 week from now","start_time_as_diff_for_humans":"3 hours ago","end_time_as_diff_for_humans":"3 hours ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null},"image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null},"image":null}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4},"image":null}]}}

class AllAppointments {
  AllAppointments({
      num? id, 
      String? startDate, 
      String? startTime, 
      String? endDate, 
      String? endTime, 
      String? schedStart, 
      String? schedEnd, 
      num? weekDay, 
      dynamic actualStart, 
      dynamic actualEnd, 
      num? latenotice, 
      num? edited, 
      dynamic durationAct, 
      String? durationSched, 
      dynamic expenseNotes, 
      dynamic notes, 
      num? createdBy, 
      dynamic officeNotes, 
      num? assignmentId, 
      num? serviceId, 
      dynamic wageId, 
      num? priceId, 
      num? officeId, 
      num? authId, 
      num? courseId, 
      num? clientId, 
      num? staffId, 
      num? statusId, 
      num? billable, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? groupKey, 
      String? formattedStartTime, 
      String? formattedEndTime, 
      List<num>? appointmentIds, 
      List<AllClients>? allClients, 
      List<AllStaff>? allStaff, 
      String? dayofweek, 
      String? formattedStartDate,
      String? formattedEndDate,
      Status? status, 
      Staff? staff, 
      Price? price, 
      Office? office, 
      Service? service, 
      Client? client, 
      Authorization? authorization,}){
    _id = id;
    _startDate = startDate;
    _startTime = startTime;
    _endDate = endDate;
    _endTime = endTime;
    _schedStart = schedStart;
    _schedEnd = schedEnd;
    _weekDay = weekDay;
    _actualStart = actualStart;
    _actualEnd = actualEnd;
    _latenotice = latenotice;
    _edited = edited;
    _durationAct = durationAct;
    _durationSched = durationSched;
    _expenseNotes = expenseNotes;
    _notes = notes;
    _createdBy = createdBy;
    _officeNotes = officeNotes;
    _assignmentId = assignmentId;
    _serviceId = serviceId;
    _wageId = wageId;
    _priceId = priceId;
    _officeId = officeId;
    _authId = authId;
    _courseId = courseId;
    _clientId = clientId;
    _staffId = staffId;
    _statusId = statusId;
    _billable = billable;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _groupKey = groupKey;
    _formattedStartTime = formattedStartTime;
    _formattedEndTime = formattedEndTime;
    _appointmentIds = appointmentIds;
    _allClients = allClients;
    _allStaff = allStaff;
    _dayofweek = dayofweek;
    _formattedStartTime = formattedStartTime;
    _formattedStartDate = formattedStartDate;
    _formattedEndTime = formattedEndTime;
    _formattedEndDate = formattedEndDate;
    _status = status;
    _staff = staff;
    _price = price;
    _office = office;
    _service = service;
    _client = client;
    _authorization = authorization;
}

  AllAppointments.fromJson(dynamic json) {
    _id = json['id'];
    _startDate = json['start_date'];
    _startTime = json['start_time'];
    _endDate = json['end_date'];
    _endTime = json['end_time'];
    _schedStart = json['sched_start'];
    _schedEnd = json['sched_end'];
    _weekDay = json['week_day'];
    _actualStart = json['actual_start'];
    _actualEnd = json['actual_end'];
    _latenotice = json['latenotice'];
    _edited = json['edited'];
    _durationAct = json['duration_act'];
    _durationSched = json['duration_sched'];
    _expenseNotes = json['expense_notes'];
    _notes = json['notes'];
    _createdBy = json['created_by'];
    _officeNotes = json['office_notes'];
    _assignmentId = json['assignment_id'];
    _serviceId = json['service_id'];
    _wageId = json['wage_id'];
    _priceId = json['price_id'];
    _officeId = json['office_id'];
    _authId = json['auth_id'];
    _courseId = json['course_id'];
    _clientId = json['client_id'];
    _staffId = json['staff_id'];
    _statusId = json['status_id'];
    _billable = json['billable'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _groupKey = json['groupKey'];
    _formattedStartTime = json['formatted_start_time'];
    _formattedEndTime = json['formatted_end_time'];
    _appointmentIds = json['appointment_ids'] != null ? json['appointment_ids'].cast<num>() : [];
    if (json['all_clients'] != null) {
      _allClients = [];
      json['all_clients'].forEach((v) {
        _allClients?.add(AllClients.fromJson(v));
      });
    }
    if (json['all_staff'] != null) {
      _allStaff = [];
      json['all_staff'].forEach((v) {
        _allStaff?.add(AllStaff.fromJson(v));
      });
    }
    _dayofweek = json['dayofweek'];
    _formattedStartTime = json['FormattedStartTime'];
    _formattedStartDate = json['FormattedStartDate'];
    _formattedEndTime = json['FormattedEndTime'];
    _formattedEndDate = json['FormattedEndDate'];
    _status = json['status'] != null ? Status.fromJson(json['status']) : null;
    _staff = json['staff'] != null ? Staff.fromJson(json['staff']) : null;
    _price = json['price'] != null ? Price.fromJson(json['price']) : null;
    _office = json['office'] != null ? Office.fromJson(json['office']) : null;
    _service = json['service'] != null ? Service.fromJson(json['service']) : null;
    _client = json['client'] != null ? Client.fromJson(json['client']) : null;
    _authorization = json['authorization'] != null ? Authorization.fromJson(json['authorization']) : null;
  }
  num? _id;
  String? _startDate;
  String? _startTime;
  String? _endDate;
  String? _endTime;
  String? _schedStart;
  String? _schedEnd;
  num? _weekDay;
  dynamic _actualStart;
  dynamic _actualEnd;
  num? _latenotice;
  num? _edited;
  dynamic _durationAct;
  String? _durationSched;
  dynamic _expenseNotes;
  dynamic _notes;
  num? _createdBy;
  dynamic _officeNotes;
  num? _assignmentId;
  num? _serviceId;
  dynamic _wageId;
  num? _priceId;
  num? _officeId;
  num? _authId;
  num? _courseId;
  num? _clientId;
  num? _staffId;
  num? _statusId;
  num? _billable;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _groupKey;
  String? _formattedStartTime;
  String? _formattedEndTime;
  List<num>? _appointmentIds;
  List<AllClients>? _allClients;
  List<AllStaff>? _allStaff;
  String? _dayofweek;
  String? _formattedStartDate;
  String? _formattedEndDate;
  Status? _status;
  Staff? _staff;
  Price? _price;
  Office? _office;
  Service? _service;
  Client? _client;
  Authorization? _authorization;
AllAppointments copyWith({  num? id,
  String? startDate,
  String? startTime,
  String? endDate,
  String? endTime,
  String? schedStart,
  String? schedEnd,
  num? weekDay,
  dynamic actualStart,
  dynamic actualEnd,
  num? latenotice,
  num? edited,
  dynamic durationAct,
  String? durationSched,
  dynamic expenseNotes,
  dynamic notes,
  num? createdBy,
  dynamic officeNotes,
  num? assignmentId,
  num? serviceId,
  dynamic wageId,
  num? priceId,
  num? officeId,
  num? authId,
  num? courseId,
  num? clientId,
  num? staffId,
  num? statusId,
  num? billable,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? groupKey,
  String? formattedStartTime,
  String? formattedEndTime,
  List<num>? appointmentIds,
  List<AllClients>? allClients,
  List<AllStaff>? allStaff,
  String? dayofweek,
  String? formattedStartDate,
  String? formattedEndDate,
  Status? status,
  Staff? staff,
  Price? price,
  Office? office,
  Service? service,
  Client? client,
  Authorization? authorization,
}) => AllAppointments(  id: id ?? _id,
  startDate: startDate ?? _startDate,
  startTime: startTime ?? _startTime,
  endDate: endDate ?? _endDate,
  endTime: endTime ?? _endTime,
  schedStart: schedStart ?? _schedStart,
  schedEnd: schedEnd ?? _schedEnd,
  weekDay: weekDay ?? _weekDay,
  actualStart: actualStart ?? _actualStart,
  actualEnd: actualEnd ?? _actualEnd,
  latenotice: latenotice ?? _latenotice,
  edited: edited ?? _edited,
  durationAct: durationAct ?? _durationAct,
  durationSched: durationSched ?? _durationSched,
  expenseNotes: expenseNotes ?? _expenseNotes,
  notes: notes ?? _notes,
  createdBy: createdBy ?? _createdBy,
  officeNotes: officeNotes ?? _officeNotes,
  assignmentId: assignmentId ?? _assignmentId,
  serviceId: serviceId ?? _serviceId,
  wageId: wageId ?? _wageId,
  priceId: priceId ?? _priceId,
  officeId: officeId ?? _officeId,
  authId: authId ?? _authId,
  courseId: courseId ?? _courseId,
  clientId: clientId ?? _clientId,
  staffId: staffId ?? _staffId,
  statusId: statusId ?? _statusId,
  billable: billable ?? _billable,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  groupKey: groupKey ?? _groupKey,
  formattedStartTime: formattedStartTime ?? _formattedStartTime,
  formattedEndTime: formattedEndTime ?? _formattedEndTime,
  appointmentIds: appointmentIds ?? _appointmentIds,
  allClients: allClients ?? _allClients,
  allStaff: allStaff ?? _allStaff,
  dayofweek: dayofweek ?? _dayofweek,
  formattedStartDate: formattedStartDate ?? _formattedStartDate,
  formattedEndDate: formattedEndDate ?? _formattedEndDate,
  status: status ?? _status,
  staff: staff ?? _staff,
  price: price ?? _price,
  office: office ?? _office,
  service: service ?? _service,
  client: client ?? _client,
  authorization: authorization ?? _authorization,
);
  num? get id => _id;
  String? get startDate => _startDate;
  String? get startTime => _startTime;
  String? get endDate => _endDate;
  String? get endTime => _endTime;
  String? get schedStart => _schedStart;
  String? get schedEnd => _schedEnd;
  num? get weekDay => _weekDay;
  dynamic get actualStart => _actualStart;
  dynamic get actualEnd => _actualEnd;
  num? get latenotice => _latenotice;
  num? get edited => _edited;
  dynamic get durationAct => _durationAct;
  String? get durationSched => _durationSched;
  dynamic get expenseNotes => _expenseNotes;
  dynamic get notes => _notes;
  num? get createdBy => _createdBy;
  dynamic get officeNotes => _officeNotes;
  num? get assignmentId => _assignmentId;
  num? get serviceId => _serviceId;
  dynamic get wageId => _wageId;
  num? get priceId => _priceId;
  num? get officeId => _officeId;
  num? get authId => _authId;
  num? get courseId => _courseId;
  num? get clientId => _clientId;
  num? get staffId => _staffId;
  num? get statusId => _statusId;
  num? get billable => _billable;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get groupKey => _groupKey;
  String? get formattedStartTime => _formattedStartTime;
  String? get formattedEndTime => _formattedEndTime;
  List<num>? get appointmentIds => _appointmentIds;
  List<AllClients>? get allClients => _allClients;
  List<AllStaff>? get allStaff => _allStaff;
  String? get dayofweek => _dayofweek;
  String? get formattedStartDate => _formattedStartDate;
  String? get formattedEndDate => _formattedEndDate;
  Status? get status => _status;
  Staff? get staff => _staff;
  Price? get price => _price;
  Office? get office => _office;
  Service? get service => _service;
  Client? get client => _client;
  Authorization? get authorization => _authorization;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['start_date'] = _startDate;
    map['start_time'] = _startTime;
    map['end_date'] = _endDate;
    map['end_time'] = _endTime;
    map['sched_start'] = _schedStart;
    map['sched_end'] = _schedEnd;
    map['week_day'] = _weekDay;
    map['actual_start'] = _actualStart;
    map['actual_end'] = _actualEnd;
    map['latenotice'] = _latenotice;
    map['edited'] = _edited;
    map['duration_act'] = _durationAct;
    map['duration_sched'] = _durationSched;
    map['expense_notes'] = _expenseNotes;
    map['notes'] = _notes;
    map['created_by'] = _createdBy;
    map['office_notes'] = _officeNotes;
    map['assignment_id'] = _assignmentId;
    map['service_id'] = _serviceId;
    map['wage_id'] = _wageId;
    map['price_id'] = _priceId;
    map['office_id'] = _officeId;
    map['auth_id'] = _authId;
    map['course_id'] = _courseId;
    map['client_id'] = _clientId;
    map['staff_id'] = _staffId;
    map['status_id'] = _statusId;
    map['billable'] = _billable;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['groupKey'] = _groupKey;
    map['formatted_start_time'] = _formattedStartTime;
    map['formatted_end_time'] = _formattedEndTime;
    map['appointment_ids'] = _appointmentIds;
    if (_allClients != null) {
      map['all_clients'] = _allClients?.map((v) => v.toJson()).toList();
    }
    if (_allStaff != null) {
      map['all_staff'] = _allStaff?.map((v) => v.toJson()).toList();
    }
    map['dayofweek'] = _dayofweek;
    map['FormattedStartTime'] = _formattedStartTime;
    map['FormattedStartDate'] = _formattedStartDate;
    map['FormattedEndTime'] = _formattedEndTime;
    map['FormattedEndDate'] = _formattedEndDate;
    if (_status != null) {
      map['status'] = _status?.toJson();
    }
    if (_staff != null) {
      map['staff'] = _staff?.toJson();
    }
    if (_price != null) {
      map['price'] = _price?.toJson();
    }
    if (_office != null) {
      map['office'] = _office?.toJson();
    }
    if (_service != null) {
      map['service'] = _service?.toJson();
    }
    if (_client != null) {
      map['client'] = _client?.toJson();
    }
    if (_authorization != null) {
      map['authorization'] = _authorization?.toJson();
    }
    return map;
  }

}

/// id : 3
/// notes : null
/// client_id : 6
/// created_by : 1
/// updated_by : 1
/// service_id : 1
/// course_id : 2
/// total_minutes : "420.00"
/// status_id : 1
/// office_notes : null
/// created_at : "2023-11-11T19:56:24.000000Z"
/// updated_at : "2023-11-11T19:56:24.000000Z"
/// deleted_at : null
/// laravel_through_key : 19
/// course : {"id":2,"start_time":"10:00:00","title":"title6196","end_time":"10:20:00","duration":20,"interval":"1","start_date":"2023-11-06","end_date":"2023-11-26","monday":1,"tuesday":1,"wednesday":1,"thursday":1,"friday":1,"saturday":1,"sunday":1,"office_id":1,"service_id":1,"price_id":22,"discount_id":4,"status_id":1,"created_at":"2023-11-11T19:56:24.000000Z","updated_at":"2023-11-11T19:56:24.000000Z","deleted_at":null,"start_date_as_diff_for_humans":"1 week ago","end_date_as_diff_for_humans":"1 week from now","start_time_as_diff_for_humans":"3 hours ago","end_time_as_diff_for_humans":"3 hours ago","clients":[{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null},"image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null},"image":null}],"staff":[{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4},"image":null}]}

class Authorization {
  Authorization({
      num? id, 
      dynamic notes, 
      num? clientId, 
      num? createdBy, 
      num? updatedBy, 
      num? serviceId, 
      num? courseId, 
      String? totalMinutes, 
      num? statusId, 
      dynamic officeNotes, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      num? laravelThroughKey, 
      Course? course,}){
    _id = id;
    _notes = notes;
    _clientId = clientId;
    _createdBy = createdBy;
    _updatedBy = updatedBy;
    _serviceId = serviceId;
    _courseId = courseId;
    _totalMinutes = totalMinutes;
    _statusId = statusId;
    _officeNotes = officeNotes;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _laravelThroughKey = laravelThroughKey;
    _course = course;
}

  Authorization.fromJson(dynamic json) {
    _id = json['id'];
    _notes = json['notes'];
    _clientId = json['client_id'];
    _createdBy = json['created_by'];
    _updatedBy = json['updated_by'];
    _serviceId = json['service_id'];
    _courseId = json['course_id'];
    _totalMinutes = json['total_minutes'];
    _statusId = json['status_id'];
    _officeNotes = json['office_notes'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _laravelThroughKey = json['laravel_through_key'];
    _course = json['course'] != null ? Course.fromJson(json['course']) : null;
  }
  num? _id;
  dynamic _notes;
  num? _clientId;
  num? _createdBy;
  num? _updatedBy;
  num? _serviceId;
  num? _courseId;
  String? _totalMinutes;
  num? _statusId;
  dynamic _officeNotes;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  num? _laravelThroughKey;
  Course? _course;
Authorization copyWith({  num? id,
  dynamic notes,
  num? clientId,
  num? createdBy,
  num? updatedBy,
  num? serviceId,
  num? courseId,
  String? totalMinutes,
  num? statusId,
  dynamic officeNotes,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  num? laravelThroughKey,
  Course? course,
}) => Authorization(  id: id ?? _id,
  notes: notes ?? _notes,
  clientId: clientId ?? _clientId,
  createdBy: createdBy ?? _createdBy,
  updatedBy: updatedBy ?? _updatedBy,
  serviceId: serviceId ?? _serviceId,
  courseId: courseId ?? _courseId,
  totalMinutes: totalMinutes ?? _totalMinutes,
  statusId: statusId ?? _statusId,
  officeNotes: officeNotes ?? _officeNotes,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  laravelThroughKey: laravelThroughKey ?? _laravelThroughKey,
  course: course ?? _course,
);
  num? get id => _id;
  dynamic get notes => _notes;
  num? get clientId => _clientId;
  num? get createdBy => _createdBy;
  num? get updatedBy => _updatedBy;
  num? get serviceId => _serviceId;
  num? get courseId => _courseId;
  String? get totalMinutes => _totalMinutes;
  num? get statusId => _statusId;
  dynamic get officeNotes => _officeNotes;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  num? get laravelThroughKey => _laravelThroughKey;
  Course? get course => _course;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['notes'] = _notes;
    map['client_id'] = _clientId;
    map['created_by'] = _createdBy;
    map['updated_by'] = _updatedBy;
    map['service_id'] = _serviceId;
    map['course_id'] = _courseId;
    map['total_minutes'] = _totalMinutes;
    map['status_id'] = _statusId;
    map['office_notes'] = _officeNotes;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['laravel_through_key'] = _laravelThroughKey;
    if (_course != null) {
      map['course'] = _course?.toJson();
    }
    return map;
  }

}

/// id : 2
/// start_time : "10:00:00"
/// title : "title6196"
/// end_time : "10:20:00"
/// duration : 20
/// interval : "1"
/// start_date : "2023-11-06"
/// end_date : "2023-11-26"
/// monday : 1
/// tuesday : 1
/// wednesday : 1
/// thursday : 1
/// friday : 1
/// saturday : 1
/// sunday : 1
/// office_id : 1
/// service_id : 1
/// price_id : 22
/// discount_id : 4
/// status_id : 1
/// created_at : "2023-11-11T19:56:24.000000Z"
/// updated_at : "2023-11-11T19:56:24.000000Z"
/// deleted_at : null
/// start_date_as_diff_for_humans : "1 week ago"
/// end_date_as_diff_for_humans : "1 week from now"
/// start_time_as_diff_for_humans : "3 hours ago"
/// end_time_as_diff_for_humans : "3 hours ago"
/// clients : [{"id":6,"first_name":"Default","last_name":"Client 1","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 1","pivot":{"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null},"image":null},{"id":7,"first_name":"Default","last_name":"Client 2","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Client 2","pivot":{"course_id":2,"client_id":7,"status":"Scheduled","status_change_date":null},"image":null}]
/// staff : [{"id":4,"first_name":"Default","last_name":"Staff","image_id":1,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","pivot":{"course_id":2,"staff_id":4},"image":null}]

class Course {
  Course({
      num? id, 
      String? startTime, 
      String? title, 
      String? endTime, 
      num? duration, 
      String? interval, 
      String? startDate, 
      String? endDate, 
      num? monday, 
      num? tuesday, 
      num? wednesday, 
      num? thursday, 
      num? friday, 
      num? saturday, 
      num? sunday, 
      num? officeId, 
      num? serviceId, 
      num? priceId, 
      num? discountId, 
      num? statusId, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? startDateAsDiffForHumans, 
      String? endDateAsDiffForHumans, 
      String? startTimeAsDiffForHumans, 
      String? endTimeAsDiffForHumans, 
      List<Clients>? clients, 
      List<Staff>? staff,}){
    _id = id;
    _startTime = startTime;
    _title = title;
    _endTime = endTime;
    _duration = duration;
    _interval = interval;
    _startDate = startDate;
    _endDate = endDate;
    _monday = monday;
    _tuesday = tuesday;
    _wednesday = wednesday;
    _thursday = thursday;
    _friday = friday;
    _saturday = saturday;
    _sunday = sunday;
    _officeId = officeId;
    _serviceId = serviceId;
    _priceId = priceId;
    _discountId = discountId;
    _statusId = statusId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _startDateAsDiffForHumans = startDateAsDiffForHumans;
    _endDateAsDiffForHumans = endDateAsDiffForHumans;
    _startTimeAsDiffForHumans = startTimeAsDiffForHumans;
    _endTimeAsDiffForHumans = endTimeAsDiffForHumans;
    _clients = clients;
    _staff = staff;
}

  Course.fromJson(dynamic json) {
    _id = json['id'];
    _startTime = json['start_time'];
    _title = json['title'];
    _endTime = json['end_time'];
    _duration = json['duration'];
    _interval = json['interval'];
    _startDate = json['start_date'];
    _endDate = json['end_date'];
    _monday = json['monday'];
    _tuesday = json['tuesday'];
    _wednesday = json['wednesday'];
    _thursday = json['thursday'];
    _friday = json['friday'];
    _saturday = json['saturday'];
    _sunday = json['sunday'];
    _officeId = json['office_id'];
    _serviceId = json['service_id'];
    _priceId = json['price_id'];
    _discountId = json['discount_id'];
    _statusId = json['status_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
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
  }
  num? _id;
  String? _startTime;
  String? _title;
  String? _endTime;
  num? _duration;
  String? _interval;
  String? _startDate;
  String? _endDate;
  num? _monday;
  num? _tuesday;
  num? _wednesday;
  num? _thursday;
  num? _friday;
  num? _saturday;
  num? _sunday;
  num? _officeId;
  num? _serviceId;
  num? _priceId;
  num? _discountId;
  num? _statusId;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _startDateAsDiffForHumans;
  String? _endDateAsDiffForHumans;
  String? _startTimeAsDiffForHumans;
  String? _endTimeAsDiffForHumans;
  List<Clients>? _clients;
  List<Staff>? _staff;
Course copyWith({  num? id,
  String? startTime,
  String? title,
  String? endTime,
  num? duration,
  String? interval,
  String? startDate,
  String? endDate,
  num? monday,
  num? tuesday,
  num? wednesday,
  num? thursday,
  num? friday,
  num? saturday,
  num? sunday,
  num? officeId,
  num? serviceId,
  num? priceId,
  num? discountId,
  num? statusId,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? startDateAsDiffForHumans,
  String? endDateAsDiffForHumans,
  String? startTimeAsDiffForHumans,
  String? endTimeAsDiffForHumans,
  List<Clients>? clients,
  List<Staff>? staff,
}) => Course(  id: id ?? _id,
  startTime: startTime ?? _startTime,
  title: title ?? _title,
  endTime: endTime ?? _endTime,
  duration: duration ?? _duration,
  interval: interval ?? _interval,
  startDate: startDate ?? _startDate,
  endDate: endDate ?? _endDate,
  monday: monday ?? _monday,
  tuesday: tuesday ?? _tuesday,
  wednesday: wednesday ?? _wednesday,
  thursday: thursday ?? _thursday,
  friday: friday ?? _friday,
  saturday: saturday ?? _saturday,
  sunday: sunday ?? _sunday,
  officeId: officeId ?? _officeId,
  serviceId: serviceId ?? _serviceId,
  priceId: priceId ?? _priceId,
  discountId: discountId ?? _discountId,
  statusId: statusId ?? _statusId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  deletedAt: deletedAt ?? _deletedAt,
  startDateAsDiffForHumans: startDateAsDiffForHumans ?? _startDateAsDiffForHumans,
  endDateAsDiffForHumans: endDateAsDiffForHumans ?? _endDateAsDiffForHumans,
  startTimeAsDiffForHumans: startTimeAsDiffForHumans ?? _startTimeAsDiffForHumans,
  endTimeAsDiffForHumans: endTimeAsDiffForHumans ?? _endTimeAsDiffForHumans,
  clients: clients ?? _clients,
  staff: staff ?? _staff,
);
  num? get id => _id;
  String? get startTime => _startTime;
  String? get title => _title;
  String? get endTime => _endTime;
  num? get duration => _duration;
  String? get interval => _interval;
  String? get startDate => _startDate;
  String? get endDate => _endDate;
  num? get monday => _monday;
  num? get tuesday => _tuesday;
  num? get wednesday => _wednesday;
  num? get thursday => _thursday;
  num? get friday => _friday;
  num? get saturday => _saturday;
  num? get sunday => _sunday;
  num? get officeId => _officeId;
  num? get serviceId => _serviceId;
  num? get priceId => _priceId;
  num? get discountId => _discountId;
  num? get statusId => _statusId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get startDateAsDiffForHumans => _startDateAsDiffForHumans;
  String? get endDateAsDiffForHumans => _endDateAsDiffForHumans;
  String? get startTimeAsDiffForHumans => _startTimeAsDiffForHumans;
  String? get endTimeAsDiffForHumans => _endTimeAsDiffForHumans;
  List<Clients>? get clients => _clients;
  List<Staff>? get staff => _staff;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['start_time'] = _startTime;
    map['title'] = _title;
    map['end_time'] = _endTime;
    map['duration'] = _duration;
    map['interval'] = _interval;
    map['start_date'] = _startDate;
    map['end_date'] = _endDate;
    map['monday'] = _monday;
    map['tuesday'] = _tuesday;
    map['wednesday'] = _wednesday;
    map['thursday'] = _thursday;
    map['friday'] = _friday;
    map['saturday'] = _saturday;
    map['sunday'] = _sunday;
    map['office_id'] = _officeId;
    map['service_id'] = _serviceId;
    map['price_id'] = _priceId;
    map['discount_id'] = _discountId;
    map['status_id'] = _statusId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
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
    return map;
  }

}

/// id : 4
/// first_name : "Default"
/// last_name : "Staff"
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// pivot : {"course_id":2,"staff_id":4}
/// image : null

class Staff {
  Staff({
      num? id, 
      String? firstName, 
      String? lastName, 
      num? imageId, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      Pivot? pivot, 
      dynamic image,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _imageId = imageId;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _pivot = pivot;
    _image = image;
}

  Staff.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _imageId = json['image_id'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    _image = json['image'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  num? _imageId;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  Pivot? _pivot;
  dynamic _image;
Staff copyWith({  num? id,
  String? firstName,
  String? lastName,
  num? imageId,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  Pivot? pivot,
  dynamic image,
}) => Staff(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  imageId: imageId ?? _imageId,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  pivot: pivot ?? _pivot,
  image: image ?? _image,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  num? get imageId => _imageId;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  Pivot? get pivot => _pivot;
  dynamic get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['image_id'] = _imageId;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    if (_pivot != null) {
      map['pivot'] = _pivot?.toJson();
    }
    map['image'] = _image;
    return map;
  }

}

/// course_id : 2
/// staff_id : 4

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
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Client 1"
/// pivot : {"course_id":2,"client_id":6,"status":"Scheduled","status_change_date":null}
/// image : null

class Clients {
  Clients({
      num? id, 
      String? firstName, 
      String? lastName, 
      num? imageId, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      Pivot? pivot, 
      dynamic image,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _imageId = imageId;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _pivot = pivot;
    _image = image;
}

  Clients.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _imageId = json['image_id'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _pivot = json['pivot'] != null ? Pivot.fromJson(json['pivot']) : null;
    _image = json['image'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  num? _imageId;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  Pivot? _pivot;
  dynamic _image;
Clients copyWith({  num? id,
  String? firstName,
  String? lastName,
  num? imageId,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  Pivot? pivot,
  dynamic image,
}) => Clients(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  imageId: imageId ?? _imageId,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  pivot: pivot ?? _pivot,
  image: image ?? _image,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  num? get imageId => _imageId;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  Pivot? get pivot => _pivot;
  dynamic get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['image_id'] = _imageId;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    if (_pivot != null) {
      map['pivot'] = _pivot?.toJson();
    }
    map['image'] = _image;
    return map;
  }

}

/// course_id : 2
/// client_id : 6
/// status : "Scheduled"
/// status_change_date : null


/// id : 6
/// first_name : "Default"
/// last_name : "Client 1"
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Client 1"
/// image : null

class Client {
  Client({
      num? id, 
      String? firstName, 
      String? lastName, 
      num? imageId, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      dynamic image,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _imageId = imageId;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _image = image;
}

  Client.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _imageId = json['image_id'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _image = json['image'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  num? _imageId;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  dynamic _image;
Client copyWith({  num? id,
  String? firstName,
  String? lastName,
  num? imageId,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  dynamic image,
}) => Client(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  imageId: imageId ?? _imageId,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  image: image ?? _image,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  num? get imageId => _imageId;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  dynamic get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['image_id'] = _imageId;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    map['image'] = _image;
    return map;
  }

}

/// id : 1
/// name : "Reformer Pilates"
/// locked : true
/// select_box_name : "Reformer Pilates"

class Service {
  Service({
      num? id, 
      String? name, 
      bool? locked, 
      String? selectBoxName,}){
    _id = id;
    _name = name;
    _locked = locked;
    _selectBoxName = selectBoxName;
}

  Service.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _locked = json['locked'];
    _selectBoxName = json['select_box_name'];
  }
  num? _id;
  String? _name;
  bool? _locked;
  String? _selectBoxName;
Service copyWith({  num? id,
  String? name,
  bool? locked,
  String? selectBoxName,
}) => Service(  id: id ?? _id,
  name: name ?? _name,
  locked: locked ?? _locked,
  selectBoxName: selectBoxName ?? _selectBoxName,
);
  num? get id => _id;
  String? get name => _name;
  bool? get locked => _locked;
  String? get selectBoxName => _selectBoxName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['locked'] = _locked;
    map['select_box_name'] = _selectBoxName;
    return map;
  }

}

/// id : 1
/// name : "Pilates Oda"
/// select_box_name : "Pilates Oda"
/// locked : true

class Office {
  Office({
      num? id, 
      String? name, 
      String? selectBoxName, 
      bool? locked,}){
    _id = id;
    _name = name;
    _selectBoxName = selectBoxName;
    _locked = locked;
}

  Office.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _selectBoxName = json['select_box_name'];
    _locked = json['locked'];
  }
  num? _id;
  String? _name;
  String? _selectBoxName;
  bool? _locked;
Office copyWith({  num? id,
  String? name,
  String? selectBoxName,
  bool? locked,
}) => Office(  id: id ?? _id,
  name: name ?? _name,
  selectBoxName: selectBoxName ?? _selectBoxName,
  locked: locked ?? _locked,
);
  num? get id => _id;
  String? get name => _name;
  String? get selectBoxName => _selectBoxName;
  bool? get locked => _locked;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['select_box_name'] = _selectBoxName;
    map['locked'] = _locked;
    return map;
  }

}

/// id : 22
/// charge_rate : 1
/// charge_units : "20.00"
/// service_id : 1
/// formatted_charge_units : "20:00"

class Price {
  Price({
      num? id, 
      num? chargeRate, 
      String? chargeUnits, 
      num? serviceId, 
      String? formattedChargeUnits,}){
    _id = id;
    _chargeRate = chargeRate;
    _chargeUnits = chargeUnits;
    _serviceId = serviceId;
    _formattedChargeUnits = formattedChargeUnits;
}

  Price.fromJson(dynamic json) {
    _id = json['id'];
    _chargeRate = json['charge_rate'];
    _chargeUnits = json['charge_units'];
    _serviceId = json['service_id'];
    _formattedChargeUnits = json['formatted_charge_units'];
  }
  num? _id;
  num? _chargeRate;
  String? _chargeUnits;
  num? _serviceId;
  String? _formattedChargeUnits;
Price copyWith({  num? id,
  num? chargeRate,
  String? chargeUnits,
  num? serviceId,
  String? formattedChargeUnits,
}) => Price(  id: id ?? _id,
  chargeRate: chargeRate ?? _chargeRate,
  chargeUnits: chargeUnits ?? _chargeUnits,
  serviceId: serviceId ?? _serviceId,
  formattedChargeUnits: formattedChargeUnits ?? _formattedChargeUnits,
);
  num? get id => _id;
  num? get chargeRate => _chargeRate;
  String? get chargeUnits => _chargeUnits;
  num? get serviceId => _serviceId;
  String? get formattedChargeUnits => _formattedChargeUnits;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['charge_rate'] = _chargeRate;
    map['charge_units'] = _chargeUnits;
    map['service_id'] = _serviceId;
    map['formatted_charge_units'] = _formattedChargeUnits;
    return map;
  }

}

/// id : 4
/// first_name : "Default"
/// last_name : "Staff"
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// image : null


/// id : 1
/// name : {"en":"Scheduled","tr":"planlanmış"}
/// slug : "Scheduled"
/// type : "success"
/// created_at : "2023-11-11T19:56:15.000000Z"
/// updated_at : "2023-11-11T19:56:15.000000Z"
/// deleted_at : null
/// translated_name : "Scheduled"

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

/// en : "Scheduled"
/// tr : "planlanmış"

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

/// id : 4
/// first_name : "Default"
/// last_name : "Staff"
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// image : null

class AllStaff {
  AllStaff({
      num? id, 
      String? firstName, 
      String? lastName, 
      num? imageId, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      dynamic image,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _imageId = imageId;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _image = image;
}

  AllStaff.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _imageId = json['image_id'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _image = json['image'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  num? _imageId;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  dynamic _image;
AllStaff copyWith({  num? id,
  String? firstName,
  String? lastName,
  num? imageId,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  dynamic image,
}) => AllStaff(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  imageId: imageId ?? _imageId,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  image: image ?? _image,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  num? get imageId => _imageId;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  dynamic get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['image_id'] = _imageId;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    map['image'] = _image;
    return map;
  }

}

/// id : 6
/// first_name : "Default"
/// last_name : "Client 1"
/// image_id : 1
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Client 1"
/// image : null

class AllClients {
  AllClients({
      num? id, 
      String? firstName, 
      String? lastName, 
      num? imageId, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      dynamic image,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _imageId = imageId;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _image = image;
}

  AllClients.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _imageId = json['image_id'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _image = json['image'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  num? _imageId;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  dynamic _image;
AllClients copyWith({  num? id,
  String? firstName,
  String? lastName,
  num? imageId,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  dynamic image,
}) => AllClients(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  imageId: imageId ?? _imageId,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  image: image ?? _image,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  num? get imageId => _imageId;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  dynamic get image => _image;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['image_id'] = _imageId;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    map['image'] = _image;
    return map;
  }

}