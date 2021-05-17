import '../../../core/domain/entity/repository.dart';

class RepositoryListItemModel {
  final String repositoryName;
  final int stargazerCount;

  RepositoryListItemModel._(
      {required this.repositoryName, required this.stargazerCount});

  factory RepositoryListItemModel.from(Repository repository) {
    return RepositoryListItemModel._(
        repositoryName: repository.name,
        stargazerCount: repository.stargazerCount);
  }
}
