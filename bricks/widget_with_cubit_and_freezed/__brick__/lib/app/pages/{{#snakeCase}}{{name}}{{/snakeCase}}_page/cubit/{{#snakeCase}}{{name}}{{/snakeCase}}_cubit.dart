import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '{{#pathCase}}{{name}}{{/pathCase}}_state.dart';

@injectable
class {{#pascalCase}}{{name}}{{/pascalCase}}Cubit extends Cubit<{{#pascalCase}}{{name}}{{/pascalCase}}State> {
{{#pascalCase}}{{name}}{{/pascalCase}}Cubit() : super(const {{#pascalCase}}{{name}}{{/pascalCase}}State.initial());
}
