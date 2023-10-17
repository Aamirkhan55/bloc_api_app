import 'package:bloc_api_app/data/model/post_model.dart';
import 'package:bloc_api_app/logic/post_cubit/cubit/post_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Api+Bloc'),
      ),
      body: SafeArea(
        child: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            if(state is PostLoadingState) {
              return const Center(child: CircularProgressIndicator(
                color: Colors.black,
              )
              );
            }
           if (state is PostLoadedState) {
             return buildPostListView(state.posts);
           } 
           return const Center(
            child: Text('Error Occured !'),
           );
          }
          )
        ),
    );
  }

  Widget buildPostListView (List<PostModel> posts) {
  return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                PostModel todos = posts[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(todos.id.toString()),
                    ),
                    title: Text(todos.title.toString()),
                    subtitle: Text(todos.completed.toString()),
                  ),
                );
              }
              );
}
}