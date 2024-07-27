import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:retrofit_gennerator_build_runner/graphql/config_graph.dart';

Future<QueryResult<Object?>> getData() async {
  var client = getGraphService();
  String query = """
query {
  post(id: 1) {
    title
    body
  }
}
""";

  var response = await client.query(QueryOptions(document: gql(query)));

  return response;
}
