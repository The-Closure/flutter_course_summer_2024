import 'package:flutter/material.dart';
import 'package:search_with_data/model/bird_mode.dart';
import 'package:search_with_data/service/bird_service.dart';
import 'package:search_with_data/view/search_ui_with_backend.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SearchUiWithBackend(),
    );
  }
}


class HomePage extends StatelessWidget {
  List<BirdMode> searchResult = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getDataOfBird(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            searchResult = snapshot.data!;
            return StatefulBuilder(
              builder: (context,setstate) {
                return Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        searchResult = [];
                        setstate(() {
                          snapshot.data!.forEach((element) {
                            if (element.name.contains(value)) {
                              searchResult.add(element);
                            }
                          });
                        });
                      },
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: searchResult!.length,
                        itemBuilder: (context, index) => ListTile(
                          title: Text(searchResult![index].name),
                          leading: Image.network(searchResult![index].image),
                          subtitle: Text(searchResult![index].family),
                        ),
                      ),
                    ),
                  ],
                );
              }
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
