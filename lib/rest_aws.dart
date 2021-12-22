import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'rest_aws.g.dart';

@RestApi()
abstract class RestAWS {
  factory RestAWS(Dio dio, {String baseUrl}) = _RestAWS;
  // @GET("/tasks")
  // Future<List<Task>> getUsers();

  @POST("/createUser_dev")
  @Headers({
    'Content-Type': 'application/json',
    "Accept": "application/json",
  })
  Future<dynamic> authUser(@Body() dynamic body,
      {@Path("path") required String path,
      @Header("Authorization") required String token});
}




// class Task {
//   String? id;
//   String? name;
//   String? avatar;
//   String? createdAt;

//   Task({this.id, this.name, this.avatar, this.createdAt});

//   factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
//   Map<String, dynamic> toJson() => _$TaskToJson(this);
// }
