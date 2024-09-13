/// data : {"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"roles":[{"id":1,"name":"super admin","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":2,"name":"manager","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":3,"name":"staff","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":4,"name":"client","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]}],"locale_list":[{"id":1,"name":{"en":"Usa"},"slug":"usa","short_code":"en","currency":"USD","currency_symbol":"$","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Usa"},{"id":2,"name":{"en":"Iran"},"slug":"iran","short_code":"fa","currency":"IRR","currency_symbol":"ریال","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Iran"},{"id":3,"name":{"en":"Spain"},"slug":"spain","short_code":"es","currency":"EUR","currency_symbol":"€","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Spain"},{"id":4,"name":{"en":"Turkey"},"slug":"turkey","short_code":"tr","currency":"TRY","currency_symbol":"₺","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Turkey"},{"id":5,"name":{"en":"Netherlands"},"slug":"netherlands","short_code":"nl","currency":"EUR","currency_symbol":"€","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Netherlands"},{"id":6,"name":{"en":"Australia"},"slug":"australia","short_code":"en-au","currency":"AUD","currency_symbol":"$","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Australia"}],"user":{"id":1,"first_name":"admin","last_name":"lastname","mobile":"989017023065","date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"admin@admin.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"admin lastname"}}
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class EditModel {
  EditModel({
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

  EditModel.fromJson(dynamic json) {
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

/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// roles : [{"id":1,"name":"super admin","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":2,"name":"manager","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":3,"name":"staff","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]},{"id":4,"name":"client","guard_name":"api","status":"active","created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","statuses":["active","inactive"]}]
/// locale_list : [{"id":1,"name":{"en":"Usa"},"slug":"usa","short_code":"en","currency":"USD","currency_symbol":"$","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Usa"},{"id":2,"name":{"en":"Iran"},"slug":"iran","short_code":"fa","currency":"IRR","currency_symbol":"ریال","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Iran"},{"id":3,"name":{"en":"Spain"},"slug":"spain","short_code":"es","currency":"EUR","currency_symbol":"€","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Spain"},{"id":4,"name":{"en":"Turkey"},"slug":"turkey","short_code":"tr","currency":"TRY","currency_symbol":"₺","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Turkey"},{"id":5,"name":{"en":"Netherlands"},"slug":"netherlands","short_code":"nl","currency":"EUR","currency_symbol":"€","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Netherlands"},{"id":6,"name":{"en":"Australia"},"slug":"australia","short_code":"en-au","currency":"AUD","currency_symbol":"$","created_at":"2023-10-24T09:29:06.000000Z","updated_at":"2023-10-24T09:29:06.000000Z","translated_name":"Australia"}]
/// user : {"id":1,"first_name":"admin","last_name":"lastname","mobile":"989017023065","date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"admin@admin.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-10-24T09:29:08.000000Z","updated_at":"2023-10-24T09:29:08.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"admin lastname"}

class Data {
  Data({
      List<String>? statuses, 
      List<String>? genders, 
      List<Roles>? roles, 
      List<LocaleList>? localeList, 
      User? user,}){
    _statuses = statuses;
    _genders = genders;
    _roles = roles;
    _localeList = localeList;
    _user = user;
}

  Data.fromJson(dynamic json) {
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    if (json['roles'] != null) {
      _roles = [];
      json['roles'].forEach((v) {
        _roles?.add(Roles.fromJson(v));
      });
    }
    if (json['locale_list'] != null) {
      _localeList = [];
      json['locale_list'].forEach((v) {
        _localeList?.add(LocaleList.fromJson(v));
      });
    }
    _user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
  List<String>? _statuses;
  List<String>? _genders;
  List<Roles>? _roles;
  List<LocaleList>? _localeList;
  User? _user;

  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  List<Roles>? get roles => _roles;
  List<LocaleList>? get localeList => _localeList;
  User? get user => _user;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    if (_roles != null) {
      map['roles'] = _roles?.map((v) => v.toJson()).toList();
    }
    if (_localeList != null) {
      map['locale_list'] = _localeList?.map((v) => v.toJson()).toList();
    }
    if (_user != null) {
      map['user'] = _user?.toJson();
    }
    return map;
  }

}

/// id : 1
/// first_name : "admin"
/// last_name : "lastname"
/// mobile : "989017023065"
/// date_of_birth : null
/// address : null
/// emergency_contact_number : null
/// hes_code : null
/// vaccination_status : 0
/// registration_date : null
/// references : null
/// email : "admin@admin.com"
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
/// created_at : "2023-10-24T09:29:08.000000Z"
/// updated_at : "2023-10-24T09:29:08.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "admin lastname"

class User {
  User({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? mobile, 
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
      String? fullName,}){
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
}

  User.fromJson(dynamic json) {
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
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _mobile;
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

  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get mobile => _mobile;
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
    return map;
  }

}

/// id : 1
/// name : {"en":"Usa"}
/// slug : "usa"
/// short_code : "en"
/// currency : "USD"
/// currency_symbol : "$"
/// created_at : "2023-10-24T09:29:06.000000Z"
/// updated_at : "2023-10-24T09:29:06.000000Z"
/// translated_name : "Usa"

class LocaleList {
  LocaleList({
      num? id, 
      Name? name, 
      String? slug, 
      String? shortCode, 
      String? currency, 
      String? currencySymbol, 
      String? createdAt, 
      String? updatedAt, 
      String? translatedName,}){
    _id = id;
    _name = name;
    _slug = slug;
    _shortCode = shortCode;
    _currency = currency;
    _currencySymbol = currencySymbol;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _translatedName = translatedName;
}

  LocaleList.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'] != null ? Name.fromJson(json['name']) : null;
    _slug = json['slug'];
    _shortCode = json['short_code'];
    _currency = json['currency'];
    _currencySymbol = json['currency_symbol'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _translatedName = json['translated_name'];
  }
  num? _id;
  Name? _name;
  String? _slug;
  String? _shortCode;
  String? _currency;
  String? _currencySymbol;
  String? _createdAt;
  String? _updatedAt;
  String? _translatedName;

  num? get id => _id;
  Name? get name => _name;
  String? get slug => _slug;
  String? get shortCode => _shortCode;
  String? get currency => _currency;
  String? get currencySymbol => _currencySymbol;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get translatedName => _translatedName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    if (_name != null) {
      map['name'] = _name?.toJson();
    }
    map['slug'] = _slug;
    map['short_code'] = _shortCode;
    map['currency'] = _currency;
    map['currency_symbol'] = _currencySymbol;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['translated_name'] = _translatedName;
    return map;
  }

}

/// en : "Usa"

class Name {
  Name({
      String? en,}){
    _en = en;
}

  Name.fromJson(dynamic json) {
    _en = json['en'];
  }
  String? _en;

  String? get en => _en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    return map;
  }

}

/// id : 1
/// name : "super admin"
/// guard_name : "api"
/// status : "active"
/// created_at : "2023-10-24T09:29:08.000000Z"
/// updated_at : "2023-10-24T09:29:08.000000Z"
/// statuses : ["active","inactive"]

class Roles {
  Roles({
      num? id, 
      String? name, 
      String? guardName, 
      String? status, 
      String? createdAt, 
      String? updatedAt, 
      List<String>? statuses,}){
    _id = id;
    _name = name;
    _guardName = guardName;
    _status = status;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _statuses = statuses;
}

  Roles.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _guardName = json['guard_name'];
    _status = json['status'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
  }
  num? _id;
  String? _name;
  String? _guardName;
  String? _status;
  String? _createdAt;
  String? _updatedAt;
  List<String>? _statuses;

  num? get id => _id;
  String? get name => _name;
  String? get guardName => _guardName;
  String? get status => _status;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  List<String>? get statuses => _statuses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    map['guard_name'] = _guardName;
    map['status'] = _status;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['statuses'] = _statuses;
    return map;
  }

}