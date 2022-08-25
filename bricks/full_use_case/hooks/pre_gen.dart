import 'package:mason/mason.dart';

void run(HookContext context) {
  final requestVars = context.vars['request_vars'];
  final splittedRequestVars = requestVars.split(',');
  var newRequestVars = _getNewVars(splittedRequestVars);
  String finalRequestVars = getFinalVars(newRequestVars);
  String finalMapperRequestVars = getFinalMapperVars(splittedRequestVars);
  context.vars = {
    ...context.vars,
    'request_vars': finalRequestVars,
    'mapper_request_vars': finalMapperRequestVars,
  };

  final responseVars = context.vars['response_vars'];
  final splittedResponseVars = responseVars.split(',');
  var newResponseVars = _getNewVars(splittedResponseVars);
  String finalVars = getFinalVars(newResponseVars);
  String finalMapperVars = getFinalMapperVars(splittedResponseVars);
  context.vars = {
    ...context.vars,
    'response_vars': finalVars,
    'mapper_response_vars': finalMapperVars,
  };
}

_getNewVars(vars) {
  final newVars = vars.map((element) {
    String newElement = element.trim();
    if (!newElement.contains('?')) {
      newElement = 'required $newElement, ';
    } else {
      newElement = '$newElement,';
    }
    return newElement;
  });
  return newVars;
}

String getFinalMapperVars(vars) {
  String finalMapperVars = '';
  for (var element in vars) {
    final tmp = element.split(' ').last;
    finalMapperVars += '$tmp: $tmp,';
  }
  return finalMapperVars;
}

String getFinalVars(newVars) {
  String finalVars = '';
  for (var element in newVars) {
    finalVars += element;
  }
  return finalVars;
}
