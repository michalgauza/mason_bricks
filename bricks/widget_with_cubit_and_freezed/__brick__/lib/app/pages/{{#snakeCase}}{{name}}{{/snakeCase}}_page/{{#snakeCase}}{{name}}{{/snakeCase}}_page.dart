import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';
import 'cubit/{{#pathCase}}{{name}}{{/pathCase}}_cubit.dart';
import 'cubit/{{#pathCase}}{{name}}{{/pathCase}}_state.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}Page extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}Page();

  @override
  Widget build(BuildContext context) => Scaffold(
    body: BlocProvider<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit>(
      create: (_) => getIt<{{#pascalCase}}{{name}}{{/pascalCase}}Cubit>(),
      child: const _Body(),
    ),
  );
}

class _Body extends StatelessWidget {
  const _Body();

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
