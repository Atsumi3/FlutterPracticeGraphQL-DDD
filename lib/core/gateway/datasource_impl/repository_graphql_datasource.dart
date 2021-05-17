import 'dart:async';

import 'package:graphql_flutter/graphql_flutter.dart';

import '../../domain/entity/repository.dart';
import '../data/remote/graphql/query/read_repositories.dart';
import '../datasource/repository_datasource.dart';

class RepositoryGraphQLDatasource extends RepositoryDatasource {
  final GraphQLClient _client;

  RepositoryGraphQLDatasource(this._client);

  @override
  Future<List<Repository>> fetchRepositories(String userName, int num) async {
    final result = await _client
        .query(QueryOptions(document: gql(readRepositories(userName, num))));
    if (result.hasException) {
      return Future.error(result.exception ?? Exception());
    } else {
      final repositories = result.data!['search']['nodes'] as List;
      return repositories
          .map((e) => Repository(e["name"], e["stargazerCount"]))
          .toList();
    }
  }
}
