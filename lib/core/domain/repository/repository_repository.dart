import '../entity/repository.dart';

abstract class RepositoryRepository {
  Future<List<Repository>> fetchRepositories(String userName, int num);
}
