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
