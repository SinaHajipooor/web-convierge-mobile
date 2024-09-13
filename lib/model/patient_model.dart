/// id : 1
/// image : "https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64c9810ac8119_300.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230804%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230804T162647Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=e0a2cabdcb64a9d0db06ef1c54149fe77f32d37f104b4bbc747ddcbf85669a9a"
/// first_name : "admin"
/// last_name : "lastname"
/// full_name : "admin lastname"
/// email : "admin@admin.com"
/// username : null
/// mobile : null
/// bio : null
/// status : "active"
/// gender : "man"
/// emergency_contact_number : null
/// hes_code : null
/// date_of_birth : ""
/// preferred_locale : {"id":4,"name":{"en":"Turkey"},"slug":"turkey","short_code":"tr","currency":"TRY","currency_symbol":"₺","created_at":"2023-08-01T22:02:47.000000Z","updated_at":"2023-08-01T22:02:47.000000Z","translated_name":"Turkey"}
/// permissions : []
/// roles : ["super admin"]
/// registration_date : ""
/// created_at : "2023-08-01"
/// updated_at : "2023-08-03"

class PatientModel {
  PatientModel({
      int? id, 
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
      // List<dynamic>? permissions,
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
    // _permissions = permissions;
    _roles = roles;
    _registrationDate = registrationDate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  PatientModel.fromJson(dynamic json) {
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
    // if (json['permissions'] != null) {
    //   _permissions = [];
    //   json['permissions'].forEach((v) {
    //     _permissions?.add(Dynamic.fromJson(v));
    //   });
    // }
    _roles = json['roles'] != null ? json['roles'].cast<String>() : [];
    _registrationDate = json['registration_date'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }
  int? _id;
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
  // List<dynamic>? _permissions;
  List<String>? _roles;
  String? _registrationDate;
  String? _createdAt;
  String? _updatedAt;
PatientModel copyWith({  int? id,
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
  // List<dynamic>? permissions,
  List<String>? roles,
  String? registrationDate,
  String? createdAt,
  String? updatedAt,
}) => PatientModel(  id: id ?? _id,
  image: image ?? _image,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  fullName: fullName ?? _fullName,
  email: email ?? _email,
  username: username ?? _username,
  mobile: mobile ?? _mobile,
  bio: bio ?? _bio,
  status: status ?? _status,
  gender: gender ?? _gender,
  emergencyContactNumber: emergencyContactNumber ?? _emergencyContactNumber,
  hesCode: hesCode ?? _hesCode,
  dateOfBirth: dateOfBirth ?? _dateOfBirth,
  preferredLocale: preferredLocale ?? _preferredLocale,
  // permissions: permissions ?? _permissions,
  roles: roles ?? _roles,
  registrationDate: registrationDate ?? _registrationDate,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
);
  int? get id => _id;
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
  // List<dynamic>? get permissions => _permissions;
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
    // if (_permissions != null) {
    //   map['permissions'] = _permissions?.map((v) => v.toJson()).toList();
    // }
    map['roles'] = _roles;
    map['registration_date'] = _registrationDate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}

/// id : 4
/// name : {"en":"Turkey"}
/// slug : "turkey"
/// short_code : "tr"
/// currency : "TRY"
/// currency_symbol : "₺"
/// created_at : "2023-08-01T22:02:47.000000Z"
/// updated_at : "2023-08-01T22:02:47.000000Z"
/// translated_name : "Turkey"

class PreferredLocale {
  PreferredLocale({
      int? id, 
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
  int? _id;
  Name? _name;
  String? _slug;
  String? _shortCode;
  String? _currency;
  String? _currencySymbol;
  String? _createdAt;
  String? _updatedAt;
  String? _translatedName;
PreferredLocale copyWith({  int? id,
  Name? name,
  String? slug,
  String? shortCode,
  String? currency,
  String? currencySymbol,
  String? createdAt,
  String? updatedAt,
  String? translatedName,
}) => PreferredLocale(  id: id ?? _id,
  name: name ?? _name,
  slug: slug ?? _slug,
  shortCode: shortCode ?? _shortCode,
  currency: currency ?? _currency,
  currencySymbol: currencySymbol ?? _currencySymbol,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  translatedName: translatedName ?? _translatedName,
);
  int? get id => _id;
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

/// en : "Turkey"

class Name {
  Name({
      String? en,}){
    _en = en;
}

  Name.fromJson(dynamic json) {
    _en = json['en'];
  }
  String? _en;
Name copyWith({  String? en,
}) => Name(  en: en ?? _en,
);
  String? get en => _en;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = _en;
    return map;
  }

}