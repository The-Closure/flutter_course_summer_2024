import 'package:graphql_flutter/graphql_flutter.dart';

final HttpLink httpLink = HttpLink(
  'https://graphqlzero.almansi.me/api',
);

GraphQLClient  getGraphService() {
  return GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(
      store: HiveStore(),
    ),
  );
}
