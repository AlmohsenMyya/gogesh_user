import 'package:commercial_directory_users/core/fillters/filter.dart';
import 'package:commercial_directory_users/core/paginated/sectors/sector_paginated.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/result/result.dart';
import '../../../core/use_case/use_case.dart';
import '../../../data/repositories/catgories/categories_repository.dart';
import '../../entities/sector_entity.dart';

class FetchSectorsUseCase implements UseCase<SectorPaginated, Filter> {
  final CategoriesRepository _repository;

  FetchSectorsUseCase(this._repository);

  @override
  Future<Result<SectorPaginated, Exceptions>> call(Filter params) async {
    return _repository.getSectors(filter: params.toJson());
  }
}
