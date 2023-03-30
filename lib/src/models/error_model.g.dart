// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorModel _$ErrorModelFromJson(Map<String, dynamic> json) => ErrorModel(
      error: json['error'],
    );

Map<String, dynamic> _$ErrorModelToJson(ErrorModel instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

ErrorBean _$ErrorBeanFromJson(Map<String, dynamic> json) => ErrorBean(
      code: json['code'],
      message: json['message'],
    );

Map<String, dynamic> _$ErrorBeanToJson(ErrorBean instance) => <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
    };
