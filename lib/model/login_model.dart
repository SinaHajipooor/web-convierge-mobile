import 'package:medical_u/value/constants.dart';

/// accessToken : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaS53ZWItY29uY2llcmdlLmNvbS50ci9hcGkvbG9naW4iLCJpYXQiOjE2ODg5OTQ2ODAsImV4cCI6MTY4ODk5ODI4MCwibmJmIjoxNjg4OTk0NjgwLCJqdGkiOiJ2aE4ybklXa3R2NFEzVUtuIiwic3ViIjoiMSIsInBydiI6ImY3MjMwN2M4YTZjMzRhODExNGJlZTcxODQwYzIxYjNhNDVkYTNhN2YifQ.BkPp9m_MZkY675zmrwaQSACtKHSn2NAfsKkC5MT3-6w"
/// token_type : "bearer"
/// userData : {"id":1,"first_name":"admin","last_name":"lastname","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"admin@admin.com","username":null,"prefered_locale":"en","headline":null,"bio":null,"telegram":null,"image_id":null,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-07-10T12:09:10.000000Z","updated_at":"2023-07-10T12:09:10.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"admin lastname","role":"admin","ability":[{"action":"manage","subject":"all"},{"action":"read","subject":"all"}]}
/// expires_in : 3600

class LoginModel {
  LoginModel({
      String? accessToken, 
      String? tokenType, 
      UserData? userData, 
      int? expiresIn,}){
    _accessToken = accessToken;
    _tokenType = tokenType;
    _userData = userData;
    _expiresIn = expiresIn;
}

  LoginModel.fromJson(dynamic json) {
    _accessToken = json['accessToken'];
    _tokenType = json['token_type'];
    _userData = json['userData'] != null ? UserData.fromJson(json['userData']) : null;
    _expiresIn = json['expires_in'];
  }
  String? _accessToken;
  String? _tokenType;
  UserData? _userData;
  int? _expiresIn;
LoginModel copyWith({  String? accessToken,
  String? tokenType,
  UserData? userData,
  int? expiresIn,
}) => LoginModel(  accessToken: accessToken ?? _accessToken,
  tokenType: tokenType ?? _tokenType,
  userData: userData ?? _userData,
  expiresIn: expiresIn ?? _expiresIn,
);
  String? get accessToken => _accessToken;
  String? get tokenType => _tokenType;
  UserData? get userData => _userData;
  int? get expiresIn => _expiresIn;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['accessToken'] = _accessToken;
    map['token_type'] = _tokenType;
    if (_userData != null) {
      map['userData'] = _userData?.toJson();
    }
    map['expires_in'] = _expiresIn;
    return map;
  }

}

/// id : 1
/// first_name : "admin"
/// last_name : "lastname"
/// mobile : null
/// date_of_birth : null
/// address : null
/// emergency_contact_number : null
/// hes_code : null
/// vaccination_status : 0
/// registration_date : null
/// references : null
/// email : "admin@admin.com"
/// username : null
/// prefered_locale : "en"
/// headline : null
/// bio : null
/// telegram : null
/// image_id : null
/// ip : null
/// card_number : null
/// shaba : null
/// status : "active"
/// gender : "man"
/// email_verified_at : null
/// created_at : "2023-07-10T12:09:10.000000Z"
/// updated_at : "2023-07-10T12:09:10.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "admin lastname"
/// role : "admin"
/// ability : [{"action":"manage","subject":"all"},{"action":"read","subject":"all"}]

class UserData {
  UserData({
      int? id,
    String? image,
      String? firstName, 
      String? lastName, 
      dynamic mobile, 
      dynamic dateOfBirth, 
      dynamic address, 
      dynamic emergencyContactNumber, 
      dynamic hesCode, 
      int? vaccinationStatus, 
      dynamic registrationDate, 
      dynamic references, 
      String? email, 
      dynamic username, 
      dynamic preferedLocale,
      dynamic headline, 
      dynamic bio, 
      dynamic telegram, 
      dynamic imageId, 
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
      String? role, 
      List<Ability>? ability,}){
    _id = id;
    _image=image;
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
    _preferedLocale = preferedLocale;
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
    _role = role;
    _ability = ability;
}

  UserData.fromJson(dynamic json) {
    _id = json['id'];
    if(json['image'] is Map){
      _image = json['image']['url'];
    }
    else {
      _image = json['image'];
    }
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
    if(json['preferred_locale'] is Map){
      _preferedLocale = json['preferred_locale']['id'];
    }else{
      _preferedLocale = json['preferred_locale'];

    }
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

    _role = json['roles'] != null ?  json['roles'] [0] : json['role'] ?? gUserRx.value.role ;



    if (json['ability'] != null) {
      _ability = [];
      json['ability'].forEach((v) {
        _ability?.add(Ability.fromJson(v));
      });
    }
  }
  int? _id;
  String? _image;
  String? _firstName;
  String? _lastName;
  dynamic _mobile;
  dynamic _dateOfBirth;
  dynamic _address;
  dynamic _emergencyContactNumber;
  dynamic _hesCode;
  int? _vaccinationStatus;
  dynamic _registrationDate;
  dynamic _references;
  String? _email;
  dynamic _username;
  dynamic _preferedLocale;
  dynamic _headline;
  dynamic _bio;
  dynamic _telegram;
  dynamic _imageId;
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
  String? _role;
  List<Ability>? _ability;
UserData copyWith({  int? id,
  String? image,
  String? firstName,
  String? lastName,
  dynamic mobile,
  dynamic dateOfBirth,
  dynamic address,
  dynamic emergencyContactNumber,
  dynamic hesCode,
  int? vaccinationStatus,
  dynamic registrationDate,
  dynamic references,
  String? email,
  dynamic username,
  String? preferedLocale,
  dynamic headline,
  dynamic bio,
  dynamic telegram,
  dynamic imageId,
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
  String? role,
  List<Ability>? ability,
}) => UserData(  id: id ?? _id,
  image: image??_image,
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
  preferedLocale: preferedLocale ?? _preferedLocale,
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
  role: role ?? _role,
  ability: ability ?? _ability,
);
  int? get id => _id;
  String? get image=>_image;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  dynamic get mobile => _mobile;
  dynamic get dateOfBirth => _dateOfBirth;
  dynamic get address => _address;
  dynamic get emergencyContactNumber => _emergencyContactNumber;
  dynamic get hesCode => _hesCode;
  int? get vaccinationStatus => _vaccinationStatus;
  dynamic get registrationDate => _registrationDate;
  dynamic get references => _references;
  String? get email => _email;
  dynamic get username => _username;
  dynamic get preferedLocale => _preferedLocale;
  dynamic get headline => _headline;
  dynamic get bio => _bio;
  set setBio(String bio) {
    _bio = bio;
  }
  dynamic get telegram => _telegram;
  dynamic get imageId => _imageId;
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
  String? get role => _role;
  List<Ability>? get ability => _ability;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['image']=image;
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
    map['prefered_locale'] = _preferedLocale;
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
    map['role'] = _role;
    if (_ability != null) {
      map['ability'] = _ability?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// action : "manage"
/// subject : "all"

class Ability {
  Ability({
      String? action, 
      String? subject,}){
    _action = action;
    _subject = subject;
}

  Ability.fromJson(dynamic json) {
    _action = json['action'];
    _subject = json['subject'];
  }
  String? _action;
  String? _subject;
Ability copyWith({  String? action,
  String? subject,
}) => Ability(  action: action ?? _action,
  subject: subject ?? _subject,
);
  String? get action => _action;
  String? get subject => _subject;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['action'] = _action;
    map['subject'] = _subject;
    return map;
  }

}