import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_dto_request.freezed.dart';

@freezed
class TestRequestDto with _$TestRequestDto {
const factory TestRequestDto({
required , 
}) = _TestRequestDto;
}

extension TestRequestDtoExtension on TestRequestDto {
TestRequest get toEntity => TestRequest(
  : ,
  );
}
