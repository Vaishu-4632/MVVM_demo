import 'package:flutter/material.dart';
import 'package:mvvm_demo/View%20model/movie_list_view_model.dart';
import 'package:mvvm_demo/pages/movie_list_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: 
      ChangeNotifierProvider(
        create: (context) => MovieListViewModel(),
        child: MovieListPage(),
        )
    );
  }
}

