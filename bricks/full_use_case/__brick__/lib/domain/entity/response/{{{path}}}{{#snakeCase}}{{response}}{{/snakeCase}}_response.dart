import 'package:freezed_annotation/freezed_annotation.dart';

part '{{response.snakeCase()}}_response.freezed.dart';

@freezed
class {{response.pascalCase()}}Response with _${{response.pascalCase()}}Response {
const factory {{response.pascalCase()}}Response({
  {{response_vars}}
}) = _{{response.pascalCase()}}Response;
}