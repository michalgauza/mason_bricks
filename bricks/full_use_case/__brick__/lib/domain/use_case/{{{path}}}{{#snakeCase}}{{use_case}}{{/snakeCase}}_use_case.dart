import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class {{use_case.pascalCase()}}UseCase implements UseCase<{{response.pascalCase()}}Response, {{request.pascalCase()}}Request> {

const {{use_case.pascalCase()}}UseCase(this._{{repo.camelCase()}});

final {{repo.pascalCase()}} _{{repo.camelCase()}};

@override
Future<Either<Failure, {{response.pascalCase()}}Response>> call({{request.pascalCase()}}Request payload) => _{{repo.camelCase()}}.{{use_case.camelCase()}}(payload);
}
