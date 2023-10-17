import 'package:bloc_api_app/logic/post_cubit/cubit/post_cubit.dart';
import 'package:bloc_api_app/persentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bloc Api',
        home: HomeScreen(),
      ),
    );
  }
}
