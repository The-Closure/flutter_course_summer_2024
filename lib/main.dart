import 'package:flutter/material.dart';
import 'package:intro_to_service_clean/model/cat_model.dart';
import 'package:intro_to_service_clean/model/handling_model.dart';
import 'package:intro_to_service_clean/service/cat_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePageWithListOfCat(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  ValueNotifier<ResultModel> data = ValueNotifier(ResultModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: data,
            builder: (context, value, _) {
              if (value is CatModel) {
                return Column(
                  children: [
                    Image.network(value.image),
                    Text(value.name),
                  ],
                );
              } else if (value is ExceptionModel) {
                return Text(value.message);
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        data.value = await CatService().getOneCat();
      }),
    );
  }
}

class HomePageWithListOfCat extends StatelessWidget {
  HomePageWithListOfCat({super.key});

  final ValueNotifier<ResultModel> data = ValueNotifier(ResultModel());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
            valueListenable: data,
            builder: (context, value, _) {
              if (value is ListOf<CatModel>) {
                return ListView.builder(
                  itemCount: value.listResult.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Image.network(
                      value.listResult[index].image,
                    ),
                    title: Text(value.listResult[index].name),
                  ),
                );
              } else if (value is ExceptionModel) {
                return Text(value.message);
              } else {
                print(value.runtimeType);
                return CircularProgressIndicator();
              }
            }),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        data.value = await CatService().getAllCat();
        print(data.value.runtimeType);
      }),
    );
  }
}
