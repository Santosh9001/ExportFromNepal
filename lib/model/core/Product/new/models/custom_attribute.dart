class CustomAttribute {
  String? label;
  String? code;
  String? value;

  CustomAttribute({this.label, this.code, this.value});

  factory CustomAttribute.fromJson(Map<String, dynamic> json) =>
      CustomAttribute(
        label: json['label'] as String?,
        code: json['code'] as String?,
        value: json['value'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'label': label,
        'code': code,
        'value': value,
      };
}
