import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/domain/repository/repository_repository.dart';
import '../model/repository_list_item_model.dart';
import 'repository_list_state.dart';

class RepositoryListController extends StateNotifier<RepositoryListState> {
  RepositoryListController(RepositoryRepository repositoryRepository)
      : _repositoryRepository = repositoryRepository,
        super(const RepositoryListState());

  final RepositoryRepository _repositoryRepository;

  Future<void> load() async {
    final repositories =
        await _repositoryRepository.fetchRepositories("DroidKaigi", 20);
    state = state.copyWith.call(
        data: repositories.map((e) {
      return RepositoryListItemModel.from(e);
    }).toList());
  }
}
