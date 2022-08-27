
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdownbutton/api/models/movie_data.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:uuid/uuid.dart';
import 'package:http/http.dart' as http;

class  Api {
  static final Api _singleton = Api._internal();
  final uuid = const Uuid();

  factory Api() {
    return _singleton;
  }

  Api._internal();
  
  Future<List<MovieData>> getMovieData() async {
    try {
      final response = await http.get(Uri.parse('https://62f25a6db1098f15081104e2.mockapi.io/api/v1/movie'));

      if (response.statusCode == 200) {
        return (jsonDecode(response.body) as List<dynamic>).map((e) => MovieData.fromJson(e)).toList();
      }

      return [];
    } catch (e) {
      print(e);
      return [];
    }
  }



}
