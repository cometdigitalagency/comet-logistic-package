import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

part 'rest_aws.g.dart';

@RestApi()
abstract class RestAWS {
  factory RestAWS(Dio dio, {String baseUrl}) = _RestAWS;

  //======> USERs
  // IN CASE WE WANT TO MAKE THE PATH DYNAMIC USE :
  // @POST("/{path}")
  @POST("/user")
  Future<dynamic> authUser(@Body() Map<String, dynamic> body,
      {
      // @Path("path") required String path, TOKEN MUST AT LEAST BE EMPTY STRING ''
      @Header("Authorization") required String token});

  // TODO : Update Lambda to get User based on uuid
  @GET("/user")
  Future<dynamic> getUser(
      {@Header("Authorization") required String token,
      @Header("uuid") required String uuid});

  //======> ORDER
  @POST("/order")
  Future<dynamic> createOrder(@Body() Map<String, dynamic> body,
      {@Header("Authorization") required String token});

  @GET("/order")
  Future<dynamic> getOrder(
      {@Header("Authorization") required String token,
      @Header("OrderId") required String orderId});

  @GET("/orderList")
  Future<dynamic> getOrderList(
      {@Header("Authorization") required String token});

  //======> PRODUCT
  @POST("/product")
  Future<dynamic> createProduct(@Body() Map<String, dynamic> body,
      {@Header("Authorization") required String token});

  @GET("/product")
  Future<dynamic> getProduct(
      {@Header("Authorization") required String token,
      @Header("ProductId") required String productId});

  @GET("/productList")
  Future<dynamic> getProductList(
      {@Header("Authorization") required String token});

  //======> OTP
  @POST("/send_otp")
  Future<dynamic> sendOTP(
      {@Header("Authorization") required String token,
      @Body() required dynamic body});

  @POST("/verify_otp")
  @Headers(<String, dynamic>{
    'Content-Type': 'application/json',
  })
  Future<dynamic> verifyOTP(
      {@Header("Authorization") required String token,
      @Header("_id") required String id,
      @Body() required dynamic body});
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
