import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}_dto_response.freezed.dart';

@freezed
class {{response.pascalCase()}}ResponseDto with _${{response.pascalCase()}}ResponseDto {
const factory {{response.pascalCase()}}ResponseDto({
  {{vars}}
}) = _{{response.pascalCase()}}ResponseDto;
}

extension {{response.pascalCase()}}ResponseDtoExtension on {{response.pascalCase()}}ResponseDto {
{{response.pascalCase()}}Response get toEntity => {{response.pascalCase()}}Response(
  {{mapper_vars}}
);
}
