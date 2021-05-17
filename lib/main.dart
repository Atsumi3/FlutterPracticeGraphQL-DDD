import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'app.dart';
import 'graphql_hook_scope.dart';

void main() async {
  await initHiveForFlutter();
  runApp(ProviderScope(child: GraphQLHookScope(child: App())));
}
