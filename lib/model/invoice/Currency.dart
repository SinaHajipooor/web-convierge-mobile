class Currency {
  Currency({
      this.id, 
      this.currency, 
      this.translatedName,});

  Currency.fromJson(dynamic json) {
    id = json['id'];
    currency = json['currency'];
    translatedName = json['translated_name'];
  }
  int? id;
  String? currency;
  dynamic translatedName;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['currency'] = currency;
    map['translated_name'] = translatedName;
    return map;
  }

}