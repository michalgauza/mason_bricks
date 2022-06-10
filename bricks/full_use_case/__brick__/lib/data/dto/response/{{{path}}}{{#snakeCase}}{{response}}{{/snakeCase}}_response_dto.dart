import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}_response_dto.freezed.dart';
part '{{response.snakeCase()}}_response_dto.g.dart';

@freezed
class {{response.pascalCase()}}ResponseDto with _${{response.pascalCase()}}ResponseDto {
const factory {{response.pascalCase()}}ResponseDto({
  {{vars}}
}) = _{{response.pascalCase()}}ResponseDto;

  factory {{response.pascalCase()}}RequestDto.fromJson(Map<String, dynamic> json) => _${{response.pascalCase()}}RequestDtoFromJson(json);
}

extension {{response.pascalCase()}}ResponseDtoExtension on {{response.pascalCase()}}ResponseDto {
{{response.pascalCase()}}Response get toEntity => {{response.pascalCase()}}Response(
  {{mapper_vars}}
);
}
