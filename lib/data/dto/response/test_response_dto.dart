import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_dto_response.freezed.dart';

@freezed
class TestResponseDto with _$TestResponseDto {
const factory TestResponseDto({
  required , 
}) = _TestResponseDto;
}

extension TestResponseDtoExtension on TestResponseDto {
TestResponse get toEntity => TestResponse(
  : ,
);
}
