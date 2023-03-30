import 'package:flutter/cupertino.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_model.g.dart';

@JsonSerializable()
class ErrorModel {
  ErrorModel({
    @required error,
  });
  @JsonKey(name: 'error')
  ErrorBean? error;
  factory ErrorModel.fromJson(Map<String, Object?> json) =>
      _$ErrorModelFromJson(json);
}

@JsonSerializable()
class ErrorBean {
  ErrorBean({
    @required code,
    @required message,
  });
  @JsonKey(name: 'code')
  int? code;
  @JsonKey(name: 'message')
  String? message;
  factory ErrorBean.fromJson(Map<String, Object?> json) =>
      _$ErrorBeanFromJson(json);
}
