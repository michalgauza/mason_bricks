import 'package:freezed_annotation/freezed_annotation.dart';

part '{{{path}}}{{request.snakeCase()}}_dto_request.freezed.dart';

@freezed
class {{request.pascalCase()}}RequestDto with _${{request.pascalCase()}}RequestDto {
const factory {{request.pascalCase()}}RequestDto({
{{vars}}
}) = _{{request.pascalCase()}}RequestDto;
}

extension {{request.pascalCase()}}RequestDtoExtension on {{request.pascalCase()}}RequestDto {
{{request.pascalCase()}}Request get toEntity => {{request.pascalCase()}}Request(
  {{mapper_vars}}
  );
}
