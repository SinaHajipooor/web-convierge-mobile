
import 'Data.dart';

class InvoiceModel {
  InvoiceModel({
      this.data, 
      this.message, 
      this.success, 
      this.locale, 
      this.timeZone, 
      this.fdow,});

  InvoiceModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
    success = json['success'];
    locale = json['locale'];
    timeZone = json['time_zone'];
    fdow = json['fdow'];
  }
  List<Data>? data;
  String? message;
  bool? success;
  String? locale;
  String? timeZone;
  int? fdow;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    map['success'] = success;
    map['locale'] = locale;
    map['time_zone'] = timeZone;
    map['fdow'] = fdow;
    return map;
  }

}