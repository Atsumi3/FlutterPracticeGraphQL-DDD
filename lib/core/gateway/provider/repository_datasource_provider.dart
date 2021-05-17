import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../datasource_impl/repository_graphql_datasource.dart';
import 'graphql_client_provider.dart';

final repositoryDatasourceProvider = Provider(
    (ref) => RepositoryGraphQLDatasource(ref.read(graphQLClientProvider)));
