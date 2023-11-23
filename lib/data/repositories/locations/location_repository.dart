import 'package:commercial_directory_users/data/local_data_source/db_provider.dart';
import 'package:commercial_directory_users/data/repositories/offer_repository.dart';

import '../../remote_data_source/auth_data_source/auth_data_source.dart';

class LocationRepository {
  final DBProvider dbProvider;
  final AuthRemoteDataSource dataSource;

  LocationRepository({required this.dbProvider, required this.dataSource});

  Future<void> updateCountriesLocal() async {
    try {
      final result = await dataSource.getCountry();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveCountries(result.data.data);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateRegionsLocal() async {
    try {
      final result = await dataSource.getRegion();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveRegions(result.data.data ?? []);
      }
      return;
    } catch (_) {
      return;
    }
  }

  Future<void> updateCitiesLocal() async {
    try {
      final result = await dataSource.getCity();
      if (result.response.statusCode!.isOk) {
        await dbProvider.saveCities(result.data.data ?? []);
      }
      return;
    } catch (_) {
      return;
    }
  }
}
