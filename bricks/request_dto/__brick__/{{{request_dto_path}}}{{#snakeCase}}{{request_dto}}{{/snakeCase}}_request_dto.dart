import 'package:freezed_annotation/freezed_annotation.dart';

part '{{request_dto.snakeCase()}}_request_dto.freezed.dart';

@freezed
class {{request_dto.pascalCase()}}RequestDto with _${{request_dto.pascalCase()}}RequestDto {
const factory {{request_dto.pascalCase()}}RequestDto({

}) = _{{request_dto.pascalCase()}}RequestDto;
}

extension {{request_dto.pascalCase()}}RequestDtoExtension on {{request_dto.pascalCase()}}RequestDto {
{{request_dto.pascalCase()}}Request get toEntity => {{request_dto.pascalCase()}}Request();
}
