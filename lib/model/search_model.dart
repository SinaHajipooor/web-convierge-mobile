/// id : 4
/// image : "https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/650962279362e_300.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230919%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230919T153433Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=224e842d1480ef8216950fc219c9a0b27bba33c12ffa4c98704a40ef59f8bb14"
/// first_name : "Default"
/// last_name : "Staff"
/// full_name : "Default Staff"
/// email : "default@staff.com"
/// username : null
/// mobile : null
/// bio : null
/// status : "active"
/// gender : "man"
/// emergency_contact_number : null
/// hes_code : null
/// date_of_birth : ""
/// preferred_locale : {"id":1,"name":{"en":"Usa"},"slug":"usa","short_code":"en","currency":"USD","currency_symbol":"$","created_at":"2023-09-19T08:56:04.000000Z","updated_at":"2023-09-19T08:56:04.000000Z","translated_name":"Usa"}
/// user_preference : {"id":4,"user_id":4,"sms_notification":0,"web_notification":0,"mobile_notification":0,"database_notification":1,"whatsapp_notification":0,"mail_notification":0,"created_at":"2023-09-19T08:56:06.000000Z","updated_at":"2023-09-19T08:56:06.000000Z"}
/// permissions : ["view own clients","view own profile","view manage own profile","manage own ticket","view own ticket","view own appointment","view own assignment"]
/// roles : ["staff"]
/// registration_date : ""
/// created_at : "2023-09-19"
/// updated_at : "2023-09-19"

class SearchModel {
  SearchModel({
      num? id, 
      String? image, 
      String? firstName, 
      String? lastName, 
      String? fullName, 
      String? email, 
      dynamic username, 
      dynamic mobile, 
      dynamic bio, 
      String? status, 
      String? gender, 
      dynamic emergencyContactNumber, 
      dynamic hesCode, 
      String? dateOfBirth, 
      PreferredLocale? preferredLocale, 
      UserPreference? userPreference, 
      List<String>? permissions, 
      List<String>? roles, 
      String? registrationDate, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _image = image;
    _firstName = firstName;
    _lastName = lastName;
    _fullName = fullName;
    _email = email;
    _username = username;
    _mobile = mobile;
    _bio = bio;
    _status = status;
    _gender = gender;
    _emergencyContactNumber = emergencyContactNumber;
    _hesCode = hesCode;
    _dateOfBirth = dateOfBirth;
    _preferredLocale = preferredLocale;
    _userPreference = userPreference;
    _permissions = permissions;
    _roles = roles;
    _registrationDate = registrationDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  SearchModel.fromJson(dynamic json) {
    _id = json['id'];
    _image = json['image'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _fullName = json['full_name'];
    _email = json['email'];
    _username = json['username'];
    _mobile = json['mobile'];
    _bio = json['bio'];
    _status = json['status'];
    _gender = json['gender'];
    _emergencyContactNumber = json['emergency_contact_number'];
    _hesCode = json['hes_code'];
    _dateOfBirth = json['date_of_birth'];
    _preferredLocale = json['preferred_locale'] != null ? PreferredLocale.fromJson(json['preferred_locale']) : null;
    _userPreference = json['user_preference'] != null ? UserPreference.fromJson(json['user_preference']) : null;
    _permissions = json['permissions'] != null ? json['permissions'].cast<String>() : [];
    _roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    _registrationDate = json['registration_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  String? _image;
  String? _firstName;
  String? _lastName;
  String? _fullName;
  String? _email;
  dynamic _username;
  dynamic _mobile;
  dynamic _bio;
  String? _status;
  String? _gender;
  dynamic _emergencyContactNumber;
  dynamic _hesCode;
  String? _dateOfBirth;
  PreferredLocale? _preferredLocale;
  UserPreference? _userPreference;
  List<String>? _permissions;
  List<String>? _roles;
  String? _registrationDate;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  String? get image => _image;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get fullName => _fullName;
  String? get email => _email;
  dynamic get username => _username;
  dynamic get mobile => _mobile;
  dynamic get bio => _bio;
  String? get status => _status;
  String? get gender => _gender;
  dynamic get emergencyContactNumber => _emergencyContactNumber;
  dynamic get hesCode => _hesCode;
  String? get dateOfBirth => _dateOfBirth;
  PreferredLocale? get preferredLocale => _preferredLocale;
  UserPreference? get userPreference => _userPreference;
  List<String>? get permissions => _permissions;
  List<String>? get roles => _roles;
  String? get registrationDate => _registrationDate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image'] = _image;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['full_name'] = _fullName;
    map['email'] = _email;
    map['username'] = _username;
    map['mobile'] = _mobile;
    map['bio'] = _bio;
    map['status'] = _status;
    map['gender'] = _gender;
    map['emergency_contact_number'] = _emergencyContactNumber;
    map['hes_code'] = _hesCode;
    map['date_of_birth'] = _dateOfBirth;
    if (_preferredLocale != null) {
      map['preferred_locale'] = _preferredLocale?.toJson();
    }
    if (_userPreference != null) {
      map['user_preference'] = _userPreference?.toJson();
    }
    map['permissions'] = _permissions;
    map['roles'] = _roles;
    map['registration_date'] = _registrationDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 4
/// user_id : 4
/// sms_notification : 0
/// web_notification : 0
/// mobile_notification : 0
/// database_notification : 1
/// whatsapp_notification : 0
/// mail_notification : 0
/// created_at : "2023-09-19T08:56:06.000000Z"
/// updated_at : "2023-09-19T08:56:06.000000Z"

class UserPreference {
  UserPreference({
      num? id, 
      num? userId, 
      num? smsNotification, 
      num? webNotification, 
      num? mobileNotification, 
      num? databaseNotification, 
      num? whatsappNotification, 
      num? mailNotification, 
      String? createdAt, 
      String? updatedAt,}){
    _id = id;
    _userId = userId;
    _smsNotification = smsNotification;
    _webNotification = webNotification;
    _mobileNotification = mobileNotification;
    _databaseNotification = databaseNotification;
    _whatsappNotification = whatsappNotification;
    _mailNotification = mailNotification;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  UserPreference.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _smsNotification = json['sms_notification'];
    _webNotification = json['web_notification'];
    _mobileNotification = json['mobile_notification'];
    _databaseNotification = json['database_notification'];
    _whatsappNotification = json['whatsapp_notification'];
    _mailNotification = json['mail_notification'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  num? _id;
  num? _userId;
  num? _smsNotification;
  num? _webNotification;
  num? _mobileNotification;
  num? _databaseNotification;
  num? _whatsappNotification;
  num? _mailNotification;
  String? _createdAt;
  String? _updatedAt;

  num? get id => _id;
  num? get userId => _userId;
  num? get smsNotification => _smsNotification;
  num? get webNotification => _webNotification;
  num? get mobileNotification => _mobileNotification;
  num? get databaseNotification => _databaseNotification;
  num? get whatsappNotification => _whatsappNotification;
  num? get mailNotification => _mailNotification;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['sms_notification'] = _smsNotification;
    map['web_notification'] = _webNotification;
    map['mobile_notification'] = _mobileNotification;
    map['database_notification'] = _databaseNotification;
    map['whatsapp_notification'] = _whatsappNotification;
    map['mail_notification'] = _mailNotification;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 1
/// name : {"en":"Usa"}
/// slug : "usa"
/// short_code : "en"
/// currency : "USD"
/// currency_symbol : "$"
/// created_at : "2023-09-19T08:56:04.000000Z"
/// updated_at : "2023-09-19T08:56:04.000000Z"
/// translated_name : "Usa"

class PreferredLocale {
  PreferredLocale({
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

  PreferredLocale.fromJson(dynamic json) {
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