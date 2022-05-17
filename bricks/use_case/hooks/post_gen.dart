import 'package:mason/mason.dart';
import 'dart:io';

class RequestGenerator {
  Future generate({
    required String? requestPath,
    required String? request,
  }) async {
    final brick = Brick.git(
      GitPath(
        'https://github.com/michalgauza/mason_bricks',
        path: 'bricks/request',
      ),
    );
    final generator = await MasonGenerator.fromBrick(brick);
    await generator.generate(
      DirectoryGeneratorTarget(Directory.current),
      vars: {
        'request': request ?? '',
        'request_path': requestPath ?? '',
      },
    );
  }
}

void run(HookContext context) async {
  context.logger.info('Generate request? (y/n)');
  String? response = stdin.readLineSync();
  if (response == 'y') {
    final request = '{{request}}';
    final generator = RequestGenerator();
    await generator.generate(
      requestPath: 'lib/domain/entity/request/',
      request: request,
    );
  }
}
