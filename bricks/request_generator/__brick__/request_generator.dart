import 'dart:io';

import 'package:mason/mason.dart';

String getRedString(String text) => '\x1B[31m$text\x1B[0m';

String getGreenString(String text) => '\x1B[92m$text\x1B[0m';

String getGreyString(String text) => '\x1B[37m$text\x1B[0m';

String getBlueString(String text) => '\x1B[94m$text\x1B[0m';

class RequestGenerator {
  static Logger _logger = Logger();

  static Future generate({
    String? defaultPath,
    String? defaultName,
    Function(Map<String, String>)? onGenerateCallback,
  }) async {
    final vars = {
      'request_path': defaultPath ?? '',
      'request': defaultName ?? '',
    };

    vars.forEach(
          (key, value) {
        _logger.write('$key: ${getGreyString(value)} ');
        final input = stdin.readLineSync() ?? '';
        final newValue = input.isNotEmpty ? input : value;
        vars.update(
          key,
              (_) => newValue,
          ifAbsent: () => newValue,
        );
      },
    );
    _logger.progress('');

    final brick = await Brick.git(
      GitPath(
        'https://github.com/michalgauza/mason_bricks.git',
        path: 'bricks/request',
      ),
    );
    final generator = await MasonGenerator.fromBrick(brick);
    await generator.generate(
      DirectoryGeneratorTarget(Directory.current),
      vars: vars,
    );
    onGenerateCallback?.call(vars);
    _logger.success(getGreenString('request created!'));
  }
}
