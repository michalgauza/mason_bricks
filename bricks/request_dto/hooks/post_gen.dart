import 'package:mason/mason.dart';
import 'dart:io';

void run(HookContext context) async {
  final varsString = '{{request_vars}}';
  final path = 'lib/domain/entity/request/{{request_path}}/{{request}}_request.dart';
  final file = File(path);
  final fileContent = await file.readAsString();
  final contentList = fileContent.split(varsString);
  final varsList = varsString.split(',');
  String newVars = '';
  varsList.forEach((element) {
    if (element.contains('?')) {
      newVars += '$element,';
    } else {
      newVars += 'required $element,';
    }
  });
  final newContent = '${contentList.first.toString()} $newVars ${contentList.last.toString()}';
  file.writeAsStringSync(newContent);
}
