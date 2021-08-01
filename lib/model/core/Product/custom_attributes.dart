import 'package:flutter/foundation.dart';

@immutable
class CustomAttributes {
  final String? attributeCode;
  final String? value;

  const CustomAttributes({this.attributeCode, this.value});

  @override
  String toString() {
    return 'CustomAttributes(attributeCode: $attributeCode, value: $value)';
  }

  factory CustomAttributes.fromJson(Map<String, dynamic> json) =>
      CustomAttributes(
        attributeCode: json['attribute_code'] as String?,
        value: json['value'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'attribute_code': attributeCode,
        'value': value,
      };

  CustomAttributes copyWith({
    String? attributeCode,
    String? value,
  }) {
    return CustomAttributes(
      attributeCode: attributeCode ?? this.attributeCode,
      value: value ?? this.value,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomAttributes &&
        other.attributeCode == attributeCode &&
        other.value == value;
  }

  @override
  int get hashCode => attributeCode.hashCode ^ value.hashCode;
}
