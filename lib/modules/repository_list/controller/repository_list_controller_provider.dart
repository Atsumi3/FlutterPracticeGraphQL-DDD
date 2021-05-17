import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/gateway/provider/repository_repository_provider.dart';
import 'repository_list_controller.dart';
import 'repository_list_state.dart';

final repositoryListControllerProvider =
    StateNotifierProvider<RepositoryListController, RepositoryListState>(
        (ref) =>
            RepositoryListController(ref.read(repositoryRepositoryProvider)));
