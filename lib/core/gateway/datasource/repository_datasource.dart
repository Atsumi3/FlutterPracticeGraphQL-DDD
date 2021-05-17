import '../../domain/entity/repository.dart';

abstract class RepositoryDatasource {
  Future<List<Repository>> fetchRepositories(String userName, int num);
}
