import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'controller/repository_list_controller_provider.dart';
import 'widgets/repository_list_item_widget.dart';

class RepositoryListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller = useProvider(repositoryListControllerProvider.notifier);
    return FutureBuilder(
        future: controller.load(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildList();
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  Widget _buildList() {
    return HookBuilder(builder: (context) {
      final data = useProvider(
          repositoryListControllerProvider.select((value) => value.data));
      return ListView.builder(
        itemBuilder: (context, index) {
          return RepositoryListItemWidget(data[index]);
        },
        itemCount: data.length,
      );
    });
  }
}
