import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {
{{#pascalCase}}{{name}}{{/pascalCase}}Cubit() : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.initial());
}
