import 'package:mason/mason.dart';

void run(HookContext context) {
  final requestVars = context.vars['vars'];
  final vars = requestVars.split(',');
  final newVars = vars.map((element) {
    String newElement = element.trim();
    if (!newElement.contains('?')) {
      newElement = 'required $newElement, ';
    } else {
      newElement = '$newElement,';
    }
    return newElement;
  });
  String finalVars = '';
  for (var element in newVars) {
    finalVars += element;
  }
  String finalMapperVars = '';
  for (var element in vars) {
    final tmp = element.split(' ').last;
    finalMapperVars += '$tmp: $tmp,';
  }
  context.vars = {
    ...context.vars,
    'vars': finalVars,
    'mapper_vars': finalMapperVars,
  };
}
