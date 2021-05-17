import '../../domain/entity/repository.dart';
import '../../domain/repository/repository_repository.dart';
import '../datasource/repository_datasource.dart';

class RepositoryRepositoryImpl implements RepositoryRepository {
  final RepositoryDatasource _datasource;

  RepositoryRepositoryImpl(this._datasource);

  @override
  Future<List<Repository>> fetchRepositories(String userName, int num) async {
    return _datasource.fetchRepositories(userName, num);
  }
}
