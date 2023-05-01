// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Index _$IndexFromJson(Map<String, dynamic> json) => Index(
      database:
          IndexDatabase.fromJson(json['database'] as Map<String, dynamic>),
      status: IndexStatus.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IndexToJson(Index instance) => <String, dynamic>{
      'database': instance.database,
      'status': instance.status,
    };
