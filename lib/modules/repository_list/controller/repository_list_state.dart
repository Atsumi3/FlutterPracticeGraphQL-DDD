import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/repository_list_item_model.dart';

part 'repository_list_state.freezed.dart';

@freezed
class RepositoryListState with _$RepositoryListState {
  const factory RepositoryListState(
      {@Default([]) List<RepositoryListItemModel> data}) = _RepositoryListState;
}
