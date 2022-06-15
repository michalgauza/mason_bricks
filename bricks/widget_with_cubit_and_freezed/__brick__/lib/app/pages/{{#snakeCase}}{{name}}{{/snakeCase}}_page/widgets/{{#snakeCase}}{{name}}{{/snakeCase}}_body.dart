import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/{{#pascalCase}}{{name}}{{/pascalCase}}_cubit.dart';
import '../cubit/{{#pascalCase}}{{name}}{{/pascalCase}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Body extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Body();

  @override
  Widget build(BuildContext context) => BlocBuilder<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit, {{#pascalCase}}{{name}}{{/pascalCase}}State>(
      builder: (_, state) => state.when(
      initial: () => const Text('initial'),
      success: () => const Text('success'),
      error: () => const Text('error'),
      loading: () => const Text('loading'),
      ),
  );
}
