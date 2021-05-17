import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'graphql_client_provider.dart';

class GraphQLClientNotifier extends ValueNotifier<GraphQLClient> {
  GraphQLClientNotifier(GraphQLClient client) : super(client);
}

final graphQLClientNotifierProvider =
    Provider((ref) => GraphQLClientNotifier(ref.read(graphQLClientProvider)));
