import 'Name.dart';

class Status {
  Status({
      this.id, 
      this.name, 
      this.slug, 
      this.type, 
      this.createdAt, 
      this.updatedAt, 
      this.deletedAt, 
      this.translatedName,});

  Status.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'] != null ? Name.fromJson(json['name']) : null;
    slug = json['slug'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
    translatedName = json['translated_name'];
  }
  int? id;
  Name? name;
  String? slug;
  String? type;
  String? createdAt;
  String? updatedAt;
  dynamic deletedAt;
  String? translatedName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    if (name != null) {
      map['name'] = name?.toJson();
    }
    map['slug'] = slug;
    map['type'] = type;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['deleted_at'] = deletedAt;
    map['translated_name'] = translatedName;
    return map;
  }

}