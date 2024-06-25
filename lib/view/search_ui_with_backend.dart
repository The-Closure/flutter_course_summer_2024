import 'package:flutter/material.dart';
import 'package:search_with_data/service/bird_service.dart';

class SearchUiWithBackend extends StatefulWidget {
  const SearchUiWithBackend({super.key});

  @override
  State<SearchUiWithBackend> createState() => _SearchUiWithBackendState();
}

class _SearchUiWithBackendState extends State<SearchUiWithBackend> {
String lexem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            setState(() {
              lexem=value;
            });
          },
        ),
      ),
      body: FutureBuilder(
        future: searchInBird(lexem: lexem),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
         return   ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(snapshot.data![index].name),
                leading: Image.network(snapshot.data![index].image),
                subtitle: Text(snapshot.data![index].family),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
