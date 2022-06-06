import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class TestUseCase implements UseCase<TestResponse, TestRequest}> {

const Test(this._test)UseCase;

final Test _test;

@override
Future<Either<Failure, TestResponse>> call(Test payload) => _test.test(payload);
}
