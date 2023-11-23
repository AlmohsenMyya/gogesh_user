import 'package:equatable/equatable.dart';

import '../result/result.dart';

abstract class UseCase<T, P extends Params> {
  Future<Result<T, Exception>> call(P params);
}

abstract class Params extends Equatable {
  const Params();

  @override
  List<Object?> get props;
}

class NoParams extends Params {
  @override
  List<Object?> get props => [];
}
