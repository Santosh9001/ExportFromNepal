import 'data.dart';

class ProductDetail {
  bool? status;
  String? message;
  Data? data;

  ProductDetail({this.status, this.message, this.data});

  factory ProductDetail.fromJson(Map<String, dynamic> json) => ProductDetail(
        status: json['status'] as bool?,
        message: json['message'] as String?,
        data: json['data'] == null
            ? null
            : Data.fromJson(json['data'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'status': status,
        'message': message,
        'data': data?.toJson(),
      };
}
