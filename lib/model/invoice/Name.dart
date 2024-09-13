class Name {
  Name({
      this.en, 
      this.tr,});

  Name.fromJson(dynamic json) {
    en = json['en'];
    tr = json['tr'];
  }
  String? en;
  String? tr;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['en'] = en;
    map['tr'] = tr;
    return map;
  }

}