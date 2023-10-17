import 'dart:developer';

import 'package:bloc_api_app/data/repository/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {

Api api = Api();  

void fetchPost () async{
  try {
    Response response = await api.sendRequest.get("/posts");
    log(response.data);
  } catch (e) {
     e.toString();
  }
}

}