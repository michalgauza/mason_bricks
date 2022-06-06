import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}_response.freezed.dart';

@freezed
class {{response.pascalCase()}}Response with _${{response.pascalCase()}}Response {
const factory {{response.pascalCase()}}Response({
  {{vars}}
}) = _{{response.pascalCase()}}Response;
}

extension {{response.pascalCase()}}ResponseExtension on {{response.pascalCase()}}Response {
{{response.pascalCase()}}ResponseDto get toDto => {{response.pascalCase()}}ResponseDto(
  {{mapper_vars}}
);
}
