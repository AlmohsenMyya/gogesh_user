import '../use_case/use_case.dart';

class ModelID extends Params {
  const ModelID({required this.id});
  final int id;
  @override
  List<Object?> get props => [id];
}
