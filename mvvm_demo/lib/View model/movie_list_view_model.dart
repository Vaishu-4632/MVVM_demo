

import 'package:flutter/material.dart';
import 'package:mvvm_demo/View%20model/movie_view_model.dart';
import 'package:mvvm_demo/services/webservice.dart';

class MovieListViewModel extends ChangeNotifier {

  List<MovieViewModel> movies = <MovieViewModel>[]; 

  Future<void> fetchMovies(String keyword) async {
    final results =  await Webservice().fetchMovies(keyword);
    this.movies = results.map((item) => MovieViewModel(movie: item)).toList();
    print(this.movies);
    notifyListeners(); 
  }

}