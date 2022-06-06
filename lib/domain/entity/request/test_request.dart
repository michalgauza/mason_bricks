import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_request.freezed.dart';

@freezed
class TestRequest with _$TestRequest {
const factory TestRequest({
    required , 
  }) = _TestRequest;
}

extension TestRequestExtension on TestRequest {
  TestRequestDto get toDto => TestRequestDto(
    : ,
  );
}
