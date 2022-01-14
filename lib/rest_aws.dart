import 'dart:io';

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
  Future<dynamic> authUser(@Body() dynamic body,
      {
      // @Path("path") required String path, TOKEN MUST AT LEAST BE EMPTY STRING ''
      @Header("Authorization") String token = ""});

  // TODO : Update Lambda to get User based on uuid
  @GET("/user")
  Future<dynamic> getUser(
      {@Header("Authorization") String token = "",
      @Query("uuid") required String uuid,
      @Query("roleId") required String roleId});

  //======> ORDER
  @GET("/order")
  Future<dynamic> getOrder(
      {@Header("Authorization") required String token,
      @Header("OrderId") required String orderId});

  @GET("/myOrders")
  Future<dynamic> getMyOrder(
      {@Header("Authorization") required String token,
      @Query("customerId") required String customerId});

  @GET("/myFavoriteProducts")
  Future<dynamic> getMyFavoriteProducts(
      {@Header("Authorization") required String token,
      @Query("customerId") required String customerId});

  @GET("/myShopOrders")
  Future<dynamic> getShopOrders(
      {@Header("Authorization") required String token,
      @Query("shopId") required String shopId,
      @Query("orderStatus") required String orderStatus});

  @GET("assignedOrder")
  Future<dynamic> getAssignedOrder(
      {@Header("Authorization") required String token,
      @Query("shopId") required String riderId});

  @GET("acceptOrder")
  Future<dynamic> getAcceptOrder(
      {@Header("Authorization") required String token,
      @Query("shopId") required String riderId});

  @GET("/orderMap")
  Future<dynamic> getOrderMap(
      {@Header("Authorization") required String token,
      @Query("userId") required String userId,
      @Query("longtitude") required double longtitude,
      @Query("latitude") required double latitude});

  @GET("/orderList")
  Future<dynamic> getOrderList(
      {@Header("Authorization") required String token,
      @Query("longtitude") required double longtitude,
      @Query("latitude") required double latitude});

  @GET("/orderListShop")
  Future<dynamic> getOrderListShop({
    @Header("Authorization") required String token,
    @Query("shopId") required String shopId,
  });

  @POST("/order")
  Future<dynamic> createOrder(@Body() dynamic body,
      {@Header("Authorization") required String token});

  @PUT("/updateOrderStatus")
  Future<dynamic> updateOrderStatus({
    @Header("Authorization") required String token,
    @Query("orderId") required String orderId,
    @Query("orderStatus") required String orderStatus,
  });

  @PUT("/acceptOrder")
  Future<dynamic> acceptOrder({
    @Header("Authorization") required String token,
    @Query("orderId") required String orderId,
  });

  @PUT("/completeOrder")
  Future<dynamic> completePayment({
    @Header("Authorization") required String token,
    @Query("orderId") required String orderId,
  });

  //======> PRODUCT
  @GET("/product")
  Future<dynamic> getProduct(
      {@Header("Authorization") required String token,
      @Header("ProductId") required String productId});

  @GET("/productList")
  Future<dynamic> getProductList(
      {@Header("Authorization") required String token,
      @Query("shopId") required String shopId});

  @POST("/product")
  Future<dynamic> createProduct(@Body() dynamic body,
      {@Header("Authorization") required String token});

  @PUT("/product")
  Future<dynamic> updateProduct(@Body() dynamic body,
      {@Header("Authorization") required String token});

  //======> SHOP
  @POST("/shop")
  Future<dynamic> createShop(@Body() Map<String, dynamic> body,
      {@Header("Authorization") required String token});

  @GET("/shop")
  Future<dynamic> getShop(
      {@Header("Authorization") required String token,
      @Query("shopId") required String shopId});

  @GET("/shopList")
  Future<dynamic> getShopList(
      {@Header("Authorization") required String token,
      @Query("category") required String category});

  @PUT("/shop")
  Future<dynamic> updateShop(@Body() Map<String, dynamic> body,
      {@Header("Authorization") required String token});

  // Image Filename must match the filename provided in signed Link
  @PUT("{imgUrl}")
  Future<dynamic> insertShopImg(@Part() File imageFile,
      {@Header("Authorization") required String token,
      @Path("imgUrl") required String imgUrl});

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
