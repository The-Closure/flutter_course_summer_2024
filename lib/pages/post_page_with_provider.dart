import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:value_notifier_provider_theme/providers/post_provider.dart';

class PostPageWithProvider extends StatelessWidget {
  const PostPageWithProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.read<PostProvider>().getAllPostsFromProvider();
      }),
      body: Consumer<PostProvider>(
        builder: (BuildContext context, value, Widget? child) {
          if (value.isLoading == true) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemCount: value.posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(value.posts[index].title),
                  leading: Text(value.posts[index].id.toString()),
                  subtitle: Text(value.posts[index].body),
                );
              },
            );
          }
        },
      ),
    );
  }
}
