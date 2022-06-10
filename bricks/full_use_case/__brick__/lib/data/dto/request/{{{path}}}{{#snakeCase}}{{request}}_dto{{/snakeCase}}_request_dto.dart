import 'package:freezed_annotation/freezed_annotation.dart';

part '{{request.snakeCase()}}_request_dto.freezed.dart';

@freezed
class {{request.pascalCase()}}RequestDto with _${{request.pascalCase()}}RequestDto {
const factory {{request.pascalCase()}}RequestDto({
{{vars}}
}) = _{{request.pascalCase()}}RequestDto;

  factory {{request.pascalCase()}}RequestDto.fromJson(Map<String, dynamic> json) => _${{request.pascalCase()}}RequestDtoFromJson(json);
}