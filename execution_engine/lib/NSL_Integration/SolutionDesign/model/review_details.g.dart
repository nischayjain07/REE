// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewDetails _$ReviewDetailsFromJson(Map<String, dynamic> json) {
  return ReviewDetails(
    betOwner: json['betOwner'] as String?,
    reviewers: (json['reviewers'] as List?)?.map((e) =>   ReviewerDetails.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    betName: json['betName'] as String?,
    betDescription: json['betDescription'] as String?,
    submittedTime: json['submittedTime'] as String?,
  );
}

Map<String, dynamic> _$ReviewDetailsToJson(ReviewDetails instance) => <String, dynamic>{
      'betOwner': instance.betOwner,
      'reviewers': instance.reviewers?.map((e) => e?.toJson())?.toList(),
      'betName': instance.betName,
      'betDescription': instance.betDescription,
      'submittedTime': instance.submittedTime,
    };
