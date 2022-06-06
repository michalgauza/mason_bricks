import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_response.freezed.dart';

@freezed
class TestResponse with _$TestResponse {
const factory TestResponse({
  required , 
}) = _TestResponse;
}

extension TestResponseExtension on TestResponse {
TestResponseDto get toDto => TestResponseDto(
  : ,
);
}
