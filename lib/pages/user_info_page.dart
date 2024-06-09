import 'package:flutter/material.dart';
import 'package:token_statefulwidget/service/login_service.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: getUserInfo(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: ListTile(
                title: Text(snapshot.data!.username),
                subtitle: Text(snapshot.data!.email),
                leading: CircleAvatar(
                  child: Text(
                    snapshot.data!.id.toString(),
                  ),
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
