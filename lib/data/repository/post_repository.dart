import 'package:bloc_api_app/data/model/post_model.dart';
import 'package:bloc_api_app/data/repository/api/api.dart';
import 'package:dio/dio.dart';

class PostRepository {

Api api = Api();  

Future<List<PostModel>> fetchPost() async{
  try {
    Response response = await api.sendRequest.get("/todos");
    List<dynamic> postMaps = response.data;
    return postMaps.map((postMaps) => PostModel.fromJson(postMaps)).toList();
  } catch (e) {
    throw e.toString();
  }
}

}