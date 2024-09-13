/// data : [{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"prefered_locale":"en","headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-07-18T13:51:36.000000Z","updated_at":"2023-07-18T13:51:36.000000Z","deleted_at":null,"service":"sampleservice","stars":"4","reviews":"114","statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"small":"64b698e99f8e3_300.jpg","medium":"64b698e99f8e3_600.jpg","original":"64b698e99f8e3.jpg"},"type":"image","filename":"multi-user.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-07-18T13:51:38.000000Z","updated_at":"2023-07-18T13:51:38.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/private/test/64b698e99f8e3.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230718%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230718T174336Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=d008eddf17c6cb3cbe7546e418a9137bc00a382df7f86ba79404df2a7fc021b8"}},{"id":5,"first_name":"Test","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"test_staff@staff.com","username":null,"prefered_locale":"en","headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-07-18T13:51:36.000000Z","updated_at":"2023-07-18T13:51:36.000000Z","deleted_at":null,"service":"sampleservice","stars":"4","reviews":"114","statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Test Staff","image":{"id":1,"user_id":1,"files":{"small":"64b698e99f8e3_300.jpg","medium":"64b698e99f8e3_600.jpg","original":"64b698e99f8e3.jpg"},"type":"image","filename":"multi-user.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-07-18T13:51:38.000000Z","updated_at":"2023-07-18T13:51:38.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/private/test/64b698e99f8e3.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230718%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230718T174336Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=d008eddf17c6cb3cbe7546e418a9137bc00a382df7f86ba79404df2a7fc021b8"}}]
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1

class PopularDoctorModel {
  PopularDoctorModel({
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

  PopularDoctorModel.fromJson(dynamic json) {
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
PopularDoctorModel copyWith({  List<Data>? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  int? fdow,
}) => PopularDoctorModel(  data: data ?? _data,
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

/// id : 4
/// first_name : "Default"
/// last_name : "Staff"
/// mobile : null
/// date_of_birth : null
/// address : null
/// emergency_contact_number : null
/// hes_code : null
/// vaccination_status : 0
/// registration_date : null
/// references : null
/// email : "default@staff.com"
/// username : null
/// prefered_locale : "en"
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
/// created_at : "2023-07-18T13:51:36.000000Z"
/// updated_at : "2023-07-18T13:51:36.000000Z"
/// deleted_at : null
/// service : "sampleservice"
/// stars : "4"
/// reviews : "114"
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// image : {"id":1,"user_id":1,"files":{"small":"64b698e99f8e3_300.jpg","medium":"64b698e99f8e3_600.jpg","original":"64b698e99f8e3.jpg"},"type":"image","filename":"multi-user.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-07-18T13:51:38.000000Z","updated_at":"2023-07-18T13:51:38.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/private/test/64b698e99f8e3.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230718%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230718T174336Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=d008eddf17c6cb3cbe7546e418a9137bc00a382df7f86ba79404df2a7fc021b8"}

class Data {
  Data({
      int? id, 
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
      int? imageId, 
      dynamic ip, 
      dynamic cardNumber, 
      dynamic shaba, 
      String? status, 
      String? gender, 
      dynamic emailVerifiedAt, 
      String? createdAt, 
      String? updatedAt, 
      dynamic deletedAt, 
      String? service, 
      String? stars, 
      String? reviews, 
      List<String>? statuses, 
      List<String>? genders, 
      String? fullName, 
      Image? image,}){
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
    _service = service;
    _stars = stars;
    _reviews = reviews;
    _statuses = statuses;
    _genders = genders;
    _fullName = fullName;
    _image = image;
}

  Data.fromJson(dynamic json) {
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
    _preferedLocale = json['prefered_locale'];
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
    _service = json['service'];
    _stars = json['stars'];
    _reviews = json['reviews'];
    _statuses = json['statuses'] != null ? json['statuses'].cast<String>() : [];
    _genders = json['genders'] != null ? json['genders'].cast<String>() : [];
    _fullName = json['full_name'];
    _image = json['image'] != null ? Image.fromJson(json['image']) : null;
  }
  int? _id;
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
  String? _preferedLocale;
  dynamic _headline;
  dynamic _bio;
  dynamic _telegram;
  int? _imageId;
  dynamic _ip;
  dynamic _cardNumber;
  dynamic _shaba;
  String? _status;
  String? _gender;
  dynamic _emailVerifiedAt;
  String? _createdAt;
  String? _updatedAt;
  dynamic _deletedAt;
  String? _service;
  String? _stars;
  String? _reviews;
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  Image? _image;
Data copyWith({  int? id,
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
  int? imageId,
  dynamic ip,
  dynamic cardNumber,
  dynamic shaba,
  String? status,
  String? gender,
  dynamic emailVerifiedAt,
  String? createdAt,
  String? updatedAt,
  dynamic deletedAt,
  String? service,
  String? stars,
  String? reviews,
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  Image? image,
}) => Data(  id: id ?? _id,
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
  service: service ?? _service,
  stars: stars ?? _stars,
  reviews: reviews ?? _reviews,
  statuses: statuses ?? _statuses,
  genders: genders ?? _genders,
  fullName: fullName ?? _fullName,
  image: image ?? _image,
);
  int? get id => _id;
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
  String? get preferedLocale => _preferedLocale;
  dynamic get headline => _headline;
  dynamic get bio => _bio;
  dynamic get telegram => _telegram;
  int? get imageId => _imageId;
  dynamic get ip => _ip;
  dynamic get cardNumber => _cardNumber;
  dynamic get shaba => _shaba;
  String? get status => _status;
  String? get gender => _gender;
  dynamic get emailVerifiedAt => _emailVerifiedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic get deletedAt => _deletedAt;
  String? get service => _service;
  String? get stars => _stars;
  String? get reviews => _reviews;
  List<String>? get statuses => _statuses;
  List<String>? get genders => _genders;
  String? get fullName => _fullName;
  Image? get image => _image;

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
    map['service'] = _service;
    map['stars'] = _stars;
    map['reviews'] = _reviews;
    map['statuses'] = _statuses;
    map['genders'] = _genders;
    map['full_name'] = _fullName;
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }

}

/// id : 1
/// user_id : 1
/// files : {"small":"64b698e99f8e3_300.jpg","medium":"64b698e99f8e3_600.jpg","original":"64b698e99f8e3.jpg"}
/// type : "image"
/// filename : "multi-user.jpg"
/// dir : "/private/test/"
/// is_private : 1
/// created_at : "2023-07-18T13:51:38.000000Z"
/// updated_at : "2023-07-18T13:51:38.000000Z"
/// url : "https://web-concierge.s3.eu-central-1.amazonaws.com/private/test/64b698e99f8e3.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230718%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230718T174336Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=d008eddf17c6cb3cbe7546e418a9137bc00a382df7f86ba79404df2a7fc021b8"

class Image {
  Image({
      int? id, 
      int? userId, 
      Files? files, 
      String? type, 
      String? filename, 
      String? dir, 
      int? isPrivate, 
      String? createdAt, 
      String? updatedAt, 
      String? url,}){
    _id = id;
    _userId = userId;
    _files = files;
    _type = type;
    _filename = filename;
    _dir = dir;
    _isPrivate = isPrivate;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _url = url;
}

  Image.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _files = json['files'] != null ? Files.fromJson(json['files']) : null;
    _type = json['type'];
    _filename = json['filename'];
    _dir = json['dir'];
    _isPrivate = json['is_private'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _url = json['url'];
  }
  int? _id;
  int? _userId;
  Files? _files;
  String? _type;
  String? _filename;
  String? _dir;
  int? _isPrivate;
  String? _createdAt;
  String? _updatedAt;
  String? _url;
Image copyWith({  int? id,
  int? userId,
  Files? files,
  String? type,
  String? filename,
  String? dir,
  int? isPrivate,
  String? createdAt,
  String? updatedAt,
  String? url,
}) => Image(  id: id ?? _id,
  userId: userId ?? _userId,
  files: files ?? _files,
  type: type ?? _type,
  filename: filename ?? _filename,
  dir: dir ?? _dir,
  isPrivate: isPrivate ?? _isPrivate,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  url: url ?? _url,
);
  int? get id => _id;
  int? get userId => _userId;
  Files? get files => _files;
  String? get type => _type;
  String? get filename => _filename;
  String? get dir => _dir;
  int? get isPrivate => _isPrivate;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get url => _url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    if (_files != null) {
      map['files'] = _files?.toJson();
    }
    map['type'] = _type;
    map['filename'] = _filename;
    map['dir'] = _dir;
    map['is_private'] = _isPrivate;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['url'] = _url;
    return map;
  }

}

/// small : "64b698e99f8e3_300.jpg"
/// medium : "64b698e99f8e3_600.jpg"
/// original : "64b698e99f8e3.jpg"

class Files {
  Files({
      String? small, 
      String? medium, 
      String? original,}){
    _small = small;
    _medium = medium;
    _original = original;
}

  Files.fromJson(dynamic json) {
    _small = json['300'];
    _medium = json['600'];
    _original = json['original'];
  }
  String? _small;
  String? _medium;
  String? _original;
Files copyWith({  String? small,
  String? medium,
  String? original,
}) => Files(  small: small ?? _small,
  medium: medium ?? _medium,
  original: original ?? _original,
);
  String? get small => _small;
  String? get medium => _medium;
  String? get original => _original;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['300'] = _small;
    map['600'] = _medium;
    map['original'] = _original;
    return map;
  }

}