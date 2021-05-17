import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
/// 認証が必要な場合は以下の雰囲気で
///
/// final _httpLink = HttpLink("https://api.github.com/graphql");
///
/// final _authLink = AuthLink(
///     getToken: () => 'Bearer ${const String.fromEnvironment("GITHUB_PAT")}');
///
/// final _graphQLClient = GraphQLClient(
///     link: _authLink.concat(_httpLink),
///     cache: GraphQLCache(store: HiveStore()));
///
final _graphQLClient = GraphQLClient(
    link: HttpLink("https://api.github.com/graphql"),
    cache: GraphQLCache(store: HiveStore()));

final graphQLClientProvider = Provider<GraphQLClient>((_) => _graphQLClient);
