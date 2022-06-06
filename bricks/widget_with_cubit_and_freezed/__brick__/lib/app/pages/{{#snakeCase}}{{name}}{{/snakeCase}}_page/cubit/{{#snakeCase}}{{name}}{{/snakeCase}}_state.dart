import 'package:freezed_annotation/freezed_annotation.dart';

part '{{#pathCase}}{{name}}{{/pathCase}}_state.freezed.dart';

@freezed
class {{#pascalCase}}{{name}}{{/pascalCase}}State with _${{#pascalCase}}{{name}}{{/pascalCase}}State {
  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.initial() = _Initial;

  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.success() = _Success;

  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.error() = _Error;

  const factory {{#pascalCase}}{{name}}{{/pascalCase}}State.loading() = _Loading;
}
