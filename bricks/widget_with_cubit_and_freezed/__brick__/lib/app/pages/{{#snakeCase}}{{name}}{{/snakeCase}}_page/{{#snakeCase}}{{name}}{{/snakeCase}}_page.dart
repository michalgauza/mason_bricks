import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_cubit.dart';
import 'cubit/{{#snakeCase}}{{name}}{{/snakeCase}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Page();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: BlocProvider<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit>(
      create: (_) => getIt<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit>(),
      child: const {{#pascalCase}}{{name}}{{/pascalCase}}Body(),
    ),
  );
}

