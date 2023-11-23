import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';
import 'package:dio/dio.dart';

import '../../../core/excptions/exceptions.dart';
import '../../../core/paginated/sectors/sector_paginated.dart';
import '../../../core/result/result.dart';
import '../../remote_data_source/categories_data_source/categories_data_source.dart';

class CategoriesRepository {
  final DBProvider dbProvider;
  final CategoriesRemoteDataSource dataSource;
  CategoriesRepository({required this.dataSource, required this.dbProvider});

  Future<Result<SectorPaginated, Exceptions>> getSectors(
      {required Map<String, dynamic> filter}) async {
    try {
      final res = await dataSource.getSectors(queries: filter);
      if (res.response.statusCode!.isOk) {
        return Result.success(data: res.data);
      }
      return const Result.failure();
    } on DioException catch (e) {
      return Result.failure(error: e.handelException());
    }
  }

  Future<void> updateActivities() async {
    try {
      final result = await dataSource.getActivities();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveActivities(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateSpecialization() async {
    try {
      final result = await dataSource.getSpecialities();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveSpecialities(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateServices() async {
    try {
      final result = await dataSource.getServices();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveServices(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateSection() async {
    try {
      final result = await dataSource.getSectionByService();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveSections(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateOccasions() async {
    try {
      final result = await dataSource.getSeasons();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveOccasion(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }
}
