import 'dart:io';

import 'package:mason/mason.dart';

import 'use_case_bundle.dart';

String getSuccessString(String text) => '\x1B[92m🎉 $text 🎉\x1B[0m';

class UseCaseGenerator {
  final Logger _logger = Logger();

  Future generate({
    required String path,
    required String name,
    required String response,
    required String request,
    required String repo,
  }) async {
    final generator = await MasonGenerator.fromBundle(useCaseBundle);
    await generator.generate(
      DirectoryGeneratorTarget(Directory.current),
      vars: {
        'path': path,
        'name': name,
        'response': response,
        'request': request,
        'repo': repo,
      },
    );
    _logger.success(getSuccessString('$name created!'));
  }
}
