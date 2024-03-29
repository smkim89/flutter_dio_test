import 'package:dio/dio.dart';

const _API_PREFIX = "https://jsonplaceholder.typicode.com/posts";

class Server{
  Future<void> getReq() async {
    Response response;
    Dio dio = new Dio();

    response = await dio.get("$_API_PREFIX/1");
    print(response.data.toString());
  }

  Future<void> postReq() async {
    Response response;
    Dio dio = new Dio();

    Map<String , dynamic> data = {"id" : 12, "name" : "vidtorianoch!!!" };
    data.putIfAbsent("userId", ()=>189);

    response = await dio.post(_API_PREFIX, data: data);
    print(response.data.toString());
  }

  Future<void> getReqWithQuery() async {
    Response response;
    Dio dio = new Dio();

    response = await dio.get(_API_PREFIX, queryParameters: {
      "userId" : 1,
      "id" : 3
    });
    print(response.data.toString());
  }
}

Server server = Server();