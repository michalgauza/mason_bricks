import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response_dto.snakeCase()}}_response_dto.freezed.dart';
part '{{response_dto.snakeCase()}}_response_dto.g.dart';

@freezed
class {{response_dto.pascalCase()}}ResponseDto with _${{response_dto.pascalCase()}}ResponseDto {
const factory {{response_dto.pascalCase()}}ResponseDto({
  {{vars}}
}) = _{{response_dto.pascalCase()}}ResponseDto;
factory {{response.pascalCase()}}RequestDto.fromJson(Map<String, dynamic> json) => _${{response.pascalCase()}}RequestDtoFromJson(json);

}

extension {{response_dto.pascalCase()}}ResponseDtoExtension on {{response_dto.pascalCase()}}ResponseDto {
{{response_dto.pascalCase()}}Response get toEntity => {{response_dto.pascalCase()}}Response(
  {{mapper_vars}}
);
}
