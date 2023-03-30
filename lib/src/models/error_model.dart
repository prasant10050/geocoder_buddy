import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ErrorModel {
  ErrorModel({
    required this.error,
  });

  @JsonKey(name: 'error', includeIfNull: false)
  final ErrorBean? error;

  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ErrorBean {
  ErrorBean({
    required this.code,
    required this.message,
  });
  @JsonKey(name: 'code', includeIfNull: false)
  final int? code;
  @JsonKey(name: 'message', includeIfNull: false)
  final String? message;
  factory ErrorBean.fromJson(Map<String, Object?> json) =>
      _$ErrorBeanFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorBeanToJson(this);
}
