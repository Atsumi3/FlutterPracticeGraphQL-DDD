import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../repository_impl/repository_repository_impl.dart';
import 'repository_datasource_provider.dart';

final repositoryRepositoryProvider = Provider(
    (ref) => RepositoryRepositoryImpl(ref.read(repositoryDatasourceProvider)));
