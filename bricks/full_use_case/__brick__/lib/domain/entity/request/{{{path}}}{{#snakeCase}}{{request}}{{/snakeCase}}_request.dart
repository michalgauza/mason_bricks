import 'package:freezed_annotation/freezed_annotation.dart';

part '{{request.snakeCase()}}_request.freezed.dart';

@freezed
class {{request.pascalCase()}}Request with _${{request.pascalCase()}}Request {
const factory {{request.pascalCase()}}Request({
    {{request_vars}}
  }) = _{{request.pascalCase()}}Request;
}

extension {{request.pascalCase()}}RequestExtension on {{request.pascalCase()}}Request {
  {{request.pascalCase()}}RequestDto get toDto => {{request.pascalCase()}}RequestDto(
    {{mapper_request_vars}}
  );
}
