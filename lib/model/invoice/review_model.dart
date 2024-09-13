/// data : {"average_rate":"3.0000","rate_count":2,"five_star_rate_count":0,"four_star_rate_count":0,"three_star_rate_count":2,"two_star_rate_count":0,"one_star_rate_count":0,"reviews":[{"id":3,"rating":3,"customer_service_rating":null,"quality_rating":null,"friendly_rating":null,"pricing_rating":null,"recommend":"Yes","department":"Sales","title":"testt","body":"coooom","approved":1,"reviewrateable_type":"User\\Models\\User","reviewrateable_id":4,"author_type":"User\\Models\\User","author_id":4,"created_at":"2023-08-24T19:24:46.000000Z","updated_at":"2023-08-24T19:24:46.000000Z","author":{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-14T14:11:38.000000Z","updated_at":"2023-08-14T14:11:38.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}}},{"id":2,"rating":3,"customer_service_rating":null,"quality_rating":null,"friendly_rating":null,"pricing_rating":null,"recommend":"Yes","department":"Sales","title":"test","body":"coooooooommmmmm","approved":1,"reviewrateable_type":"User\\Models\\User","reviewrateable_id":4,"author_type":"User\\Models\\User","author_id":4,"created_at":"2023-08-24T19:20:23.000000Z","updated_at":"2023-08-24T19:20:23.000000Z","author":{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-14T14:11:38.000000Z","updated_at":"2023-08-14T14:11:38.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}}}]}
/// message : ""
/// success : true
/// locale : "en"
/// time_zone : "NA"
/// fdow : 1
///
///
///
///
/// 

class ReviewModel {
  ReviewModel({
      Data? data, 
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

  ReviewModel.fromJson(dynamic json) {
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
ReviewModel copyWith({  Data? data,
  String? message,
  bool? success,
  String? locale,
  String? timeZone,
  int? fdow,
}) => ReviewModel(  data: data ?? _data,
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

/// average_rate : "3.0000"
/// rate_count : 2
/// five_star_rate_count : 0
/// four_star_rate_count : 0
/// three_star_rate_count : 2
/// two_star_rate_count : 0
/// one_star_rate_count : 0
/// reviews : [{"id":3,"rating":3,"customer_service_rating":null,"quality_rating":null,"friendly_rating":null,"pricing_rating":null,"recommend":"Yes","department":"Sales","title":"testt","body":"coooom","approved":1,"reviewrateable_type":"User\\Models\\User","reviewrateable_id":4,"author_type":"User\\Models\\User","author_id":4,"created_at":"2023-08-24T19:24:46.000000Z","updated_at":"2023-08-24T19:24:46.000000Z","author":{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-14T14:11:38.000000Z","updated_at":"2023-08-14T14:11:38.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}}},{"id":2,"rating":3,"customer_service_rating":null,"quality_rating":null,"friendly_rating":null,"pricing_rating":null,"recommend":"Yes","department":"Sales","title":"test","body":"coooooooommmmmm","approved":1,"reviewrateable_type":"User\\Models\\User","reviewrateable_id":4,"author_type":"User\\Models\\User","author_id":4,"created_at":"2023-08-24T19:20:23.000000Z","updated_at":"2023-08-24T19:20:23.000000Z","author":{"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-14T14:11:38.000000Z","updated_at":"2023-08-14T14:11:38.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}}}]

class Data {
  Data({
      String? averageRate, 
      int? rateCount, 
      int? fiveStarRateCount, 
      int? fourStarRateCount, 
      int? threeStarRateCount, 
      int? twoStarRateCount, 
      int? oneStarRateCount, 
      List<Reviews>? reviews,}){
    _averageRate = averageRate;
    _rateCount = rateCount;
    _fiveStarRateCount = fiveStarRateCount;
    _fourStarRateCount = fourStarRateCount;
    _threeStarRateCount = threeStarRateCount;
    _twoStarRateCount = twoStarRateCount;
    _oneStarRateCount = oneStarRateCount;
    _reviews = reviews;
}

  Data.fromJson(dynamic json) {
    _averageRate = json['average_rate'];
    _rateCount = json['rate_count'];
    _fiveStarRateCount = json['five_star_rate_count'];
    _fourStarRateCount = json['four_star_rate_count'];
    _threeStarRateCount = json['three_star_rate_count'];
    _twoStarRateCount = json['two_star_rate_count'];
    _oneStarRateCount = json['one_star_rate_count'];
    if (json['reviews'] != null) {
      _reviews = [];
      json['reviews'].forEach((v) {
        _reviews?.add(Reviews.fromJson(v));
      });
    }
  }
  String? _averageRate;
  int? _rateCount;
  int? _fiveStarRateCount;
  int? _fourStarRateCount;
  int? _threeStarRateCount;
  int? _twoStarRateCount;
  int? _oneStarRateCount;
  List<Reviews>? _reviews;
Data copyWith({  String? averageRate,
  int? rateCount,
  int? fiveStarRateCount,
  int? fourStarRateCount,
  int? threeStarRateCount,
  int? twoStarRateCount,
  int? oneStarRateCount,
  List<Reviews>? reviews,
}) => Data(  averageRate: averageRate ?? _averageRate,
  rateCount: rateCount ?? _rateCount,
  fiveStarRateCount: fiveStarRateCount ?? _fiveStarRateCount,
  fourStarRateCount: fourStarRateCount ?? _fourStarRateCount,
  threeStarRateCount: threeStarRateCount ?? _threeStarRateCount,
  twoStarRateCount: twoStarRateCount ?? _twoStarRateCount,
  oneStarRateCount: oneStarRateCount ?? _oneStarRateCount,
  reviews: reviews ?? _reviews,
);
  String? get averageRate => _averageRate;
  int? get rateCount => _rateCount;
  int? get fiveStarRateCount => _fiveStarRateCount;
  int? get fourStarRateCount => _fourStarRateCount;
  int? get threeStarRateCount => _threeStarRateCount;
  int? get twoStarRateCount => _twoStarRateCount;
  int? get oneStarRateCount => _oneStarRateCount;
  List<Reviews>? get reviews => _reviews;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['average_rate'] = _averageRate;
    map['rate_count'] = _rateCount;
    map['five_star_rate_count'] = _fiveStarRateCount;
    map['four_star_rate_count'] = _fourStarRateCount;
    map['three_star_rate_count'] = _threeStarRateCount;
    map['two_star_rate_count'] = _twoStarRateCount;
    map['one_star_rate_count'] = _oneStarRateCount;
    if (_reviews != null) {
      map['reviews'] = _reviews?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 3
/// rating : 3
/// customer_service_rating : null
/// quality_rating : null
/// friendly_rating : null
/// pricing_rating : null
/// recommend : "Yes"
/// department : "Sales"
/// title : "testt"
/// body : "coooom"
/// approved : 1
/// reviewrateable_type : "User\\Models\\User"
/// reviewrateable_id : 4
/// author_type : "User\\Models\\User"
/// author_id : 4
/// created_at : "2023-08-24T19:24:46.000000Z"
/// updated_at : "2023-08-24T19:24:46.000000Z"
/// author : {"id":4,"first_name":"Default","last_name":"Staff","mobile":null,"date_of_birth":null,"address":null,"emergency_contact_number":null,"hes_code":null,"vaccination_status":0,"registration_date":null,"references":null,"email":"default@staff.com","username":null,"preferred_locale":1,"headline":null,"bio":null,"telegram":null,"image_id":1,"ip":null,"card_number":null,"shaba":null,"status":"active","gender":"man","email_verified_at":null,"created_at":"2023-08-14T14:11:38.000000Z","updated_at":"2023-08-14T14:11:38.000000Z","deleted_at":null,"statuses":["active","inactive","ban"],"genders":["man","woman","non binary"],"full_name":"Default Staff","image":{"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}}

class Reviews {
  Reviews({
      int? id, 
      int? rating, 
      dynamic customerServiceRating, 
      dynamic qualityRating, 
      dynamic friendlyRating, 
      dynamic pricingRating, 
      String? recommend, 
      String? department, 
      String? title, 
      String? body, 
      int? approved, 
      String? reviewrateableType, 
      int? reviewrateableId, 
      String? authorType, 
      int? authorId, 
      String? createdAt, 
      String? updatedAt, 
      Author? author,}){
    _id = id;
    _rating = rating;
    _customerServiceRating = customerServiceRating;
    _qualityRating = qualityRating;
    _friendlyRating = friendlyRating;
    _pricingRating = pricingRating;
    _recommend = recommend;
    _department = department;
    _title = title;
    _body = body;
    _approved = approved;
    _reviewrateableType = reviewrateableType;
    _reviewrateableId = reviewrateableId;
    _authorType = authorType;
    _authorId = authorId;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _author = author;
}

  Reviews.fromJson(dynamic json) {
    _id = json['id'];
    _rating = json['rating'];
    _customerServiceRating = json['customer_service_rating'];
    _qualityRating = json['quality_rating'];
    _friendlyRating = json['friendly_rating'];
    _pricingRating = json['pricing_rating'];
    _recommend = json['recommend'];
    _department = json['department'];
    _title = json['title'];
    _body = json['body'];
    _approved = json['approved'];
    _reviewrateableType = json['reviewrateable_type'];
    _reviewrateableId = json['reviewrateable_id'];
    _authorType = json['author_type'];
    _authorId = json['author_id'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _author = json['author'] != null ? Author.fromJson(json['author']) : null;
  }
  int? _id;
  int? _rating;
  dynamic _customerServiceRating;
  dynamic _qualityRating;
  dynamic _friendlyRating;
  dynamic _pricingRating;
  String? _recommend;
  String? _department;
  String? _title;
  String? _body;
  int? _approved;
  String? _reviewrateableType;
  int? _reviewrateableId;
  String? _authorType;
  int? _authorId;
  String? _createdAt;
  String? _updatedAt;
  Author? _author;
Reviews copyWith({  int? id,
  int? rating,
  dynamic customerServiceRating,
  dynamic qualityRating,
  dynamic friendlyRating,
  dynamic pricingRating,
  String? recommend,
  String? department,
  String? title,
  String? body,
  int? approved,
  String? reviewrateableType,
  int? reviewrateableId,
  String? authorType,
  int? authorId,
  String? createdAt,
  String? updatedAt,
  Author? author,
}) => Reviews(  id: id ?? _id,
  rating: rating ?? _rating,
  customerServiceRating: customerServiceRating ?? _customerServiceRating,
  qualityRating: qualityRating ?? _qualityRating,
  friendlyRating: friendlyRating ?? _friendlyRating,
  pricingRating: pricingRating ?? _pricingRating,
  recommend: recommend ?? _recommend,
  department: department ?? _department,
  title: title ?? _title,
  body: body ?? _body,
  approved: approved ?? _approved,
  reviewrateableType: reviewrateableType ?? _reviewrateableType,
  reviewrateableId: reviewrateableId ?? _reviewrateableId,
  authorType: authorType ?? _authorType,
  authorId: authorId ?? _authorId,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  author: author ?? _author,
);
  int? get id => _id;
  int? get rating => _rating;
  dynamic get customerServiceRating => _customerServiceRating;
  dynamic get qualityRating => _qualityRating;
  dynamic get friendlyRating => _friendlyRating;
  dynamic get pricingRating => _pricingRating;
  String? get recommend => _recommend;
  String? get department => _department;
  String? get title => _title;
  String? get body => _body;
  int? get approved => _approved;
  String? get reviewrateableType => _reviewrateableType;
  int? get reviewrateableId => _reviewrateableId;
  String? get authorType => _authorType;
  int? get authorId => _authorId;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  Author? get author => _author;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rating'] = _rating;
    map['customer_service_rating'] = _customerServiceRating;
    map['quality_rating'] = _qualityRating;
    map['friendly_rating'] = _friendlyRating;
    map['pricing_rating'] = _pricingRating;
    map['recommend'] = _recommend;
    map['department'] = _department;
    map['title'] = _title;
    map['body'] = _body;
    map['approved'] = _approved;
    map['reviewrateable_type'] = _reviewrateableType;
    map['reviewrateable_id'] = _reviewrateableId;
    map['author_type'] = _authorType;
    map['author_id'] = _authorId;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    if (_author != null) {
      map['author'] = _author?.toJson();
    }
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
/// created_at : "2023-08-14T14:11:38.000000Z"
/// updated_at : "2023-08-14T14:11:38.000000Z"
/// deleted_at : null
/// statuses : ["active","inactive","ban"]
/// genders : ["man","woman","non binary"]
/// full_name : "Default Staff"
/// image : {"id":1,"user_id":1,"files":{"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"},"type":"image","filename":"avatar-4.jpg","dir":"/private/test/","is_private":1,"created_at":"2023-08-14T14:11:39.000000Z","updated_at":"2023-08-14T14:11:39.000000Z","url":"https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"}

class Author {
  Author({
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
      int? preferredLocale, 
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
    _image = image;
}

  Author.fromJson(dynamic json) {
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
  int? _preferredLocale;
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
  List<String>? _statuses;
  List<String>? _genders;
  String? _fullName;
  Image? _image;
Author copyWith({  int? id,
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
  int? preferredLocale,
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
  List<String>? statuses,
  List<String>? genders,
  String? fullName,
  Image? image,
}) => Author(  id: id ?? _id,
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
  preferredLocale: preferredLocale ?? _preferredLocale,
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
  int? get preferredLocale => _preferredLocale;
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
    if (_image != null) {
      map['image'] = _image?.toJson();
    }
    return map;
  }

}

/// id : 1
/// user_id : 1
/// files : {"300":"64da361b547cc_300.jpg","600":"64da361b547cc_600.jpg","original":"64da361b547cc.jpg"}
/// type : "image"
/// filename : "avatar-4.jpg"
/// dir : "/private/test/"
/// is_private : 1
/// created_at : "2023-08-14T14:11:39.000000Z"
/// updated_at : "2023-08-14T14:11:39.000000Z"
/// url : "https://web-concierge.s3.eu-central-1.amazonaws.com/dev/private/test/64da361b547cc.jpg?X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIASLKX4LCMJKE5BDGR%2F20230824%2Feu-central-1%2Fs3%2Faws4_request&X-Amz-Date=20230824T192506Z&X-Amz-SignedHeaders=host&X-Amz-Expires=3600&X-Amz-Signature=18bc70f4723d6a22b2c902b909b76c59aecc0333f8ad565b76659da781c74fbc"

class Image {
  Image({
      int? id, 
      int? userId, 
      // Files? files,
      String? type, 
      String? filename, 
      String? dir, 
      int? isPrivate, 
      String? createdAt, 
      String? updatedAt, 
      String? url,}){
    _id = id;
    _userId = userId;
    // _files = files;
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
    // _files = json['files'] != null ? Files.fromJson(json['files']) : null;
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
  // Files? _files;
  String? _type;
  String? _filename;
  String? _dir;
  int? _isPrivate;
  String? _createdAt;
  String? _updatedAt;
  String? _url;
Image copyWith({  int? id,
  int? userId,
  // Files? files,
  String? type,
  String? filename,
  String? dir,
  int? isPrivate,
  String? createdAt,
  String? updatedAt,
  String? url,
}) => Image(  id: id ?? _id,
  userId: userId ?? _userId,
  // files: files ?? _files,
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
  // Files? get files => _files;
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
    // if (_files != null) {
    //   map['files'] = _files?.toJson();
    // }
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

/// 300 : "64da361b547cc_300.jpg"
/// 600 : "64da361b547cc_600.jpg"
/// original : "64da361b547cc.jpg"

// class Files {
//   Files({
//       String? ,
//       String? ,
//       String? original,}){
//     _ = ;
//     _ = ;
//     _original = original;
// }
//
//   Files.fromJson(dynamic json) {
//     _ = json['300'];
//     _ = json['600'];
//     _original = json['original'];
//   }
//   String? _;
//   String? _;
//   String? _original;
// Files copyWith({  String? ,
//   String? ,
//   String? original,
// }) => Files(  :  ?? _,
//   :  ?? _,
//   original: original ?? _original,
// );
//   String? get  => _;
//   String? get  => _;
//   String? get original => _original;
//
//   Map<String, dynamic> toJson() {
//     final map = <String, dynamic>{};
//     map['300'] = _;
//     map['600'] = _;
//     map['original'] = _original;
//     return map;
//   }
//
// }