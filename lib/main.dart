import 'package:bloc_session_two/helper/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/post_bloc.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (context) => PostBloc()..add(GetAllPosts()),
      child: const MaterialApp(
        home: PostPageWithBlocConsumer(),
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<PostBloc, PostState>(
        listener: (context, state) {
          if (state is PostSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.green,
                content: Text(
                  'All Data Was Loaded',
                ),
              ),
            );
          }
        },
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state is PostSuccess) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.posts[index].title),
                    subtitle: Text(state.posts[index].body),
                    leading: CircleAvatar(
                      child: Text(
                        state.posts[index].id.toString(),
                      ),
                    ),
                  );
                },
              );
            } else if (state is PostError) {
              return Center(
                child: Text(state.errorMessage),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class PostPageWithBlocConsumer extends StatelessWidget {
  const PostPageWithBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocConsumer<PostBloc, PostState>(
      listener: (context, state) {
        if (state is PostSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text(
                'All Data Was Loaded',
              ),
            ),
          );
        } else if (state is PostError) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     backgroundColor: Colors.red,
          //     content: Text(
          //       state.errorMessage,
          //     ),
          //   ),
          // );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ErrorPage(errorMessage: state.errorMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is PostSuccess) {
          return ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.posts[index].title),
                subtitle: Text(state.posts[index].body),
                leading: CircleAvatar(
                  child: Text(
                    state.posts[index].id.toString(),
                  ),
                ),
              );
            },
          );
        } else if (state is PostError) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ));
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.withOpacity(0.5),
      body: Center(
        child: Text(
          errorMessage,
          style: const TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
