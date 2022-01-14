import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'fcm_token.g.dart';

@JsonSerializable(nullable: true)
class FcmTokenRequest extends Equatable {
  FcmTokenRequest({
    required this.fcmToken,
  });

  @JsonKey(name: 'fcm_token')
  final String fcmToken;

  @override
  List get props => [
        fcmToken,
      ];

  factory FcmTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FcmTokenRequestToJson(this);
}
