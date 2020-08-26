import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
 
//This is part file which will be generted automatically using 
//retrofit_generator.
part 'post_api.g.dart';

//define URL from which you wanna fetch data...
@RestApi(baseUrl: "http://www.json-generator.com/api/json/get/cffBLmFKeW?")
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  //Declare all different methods(Get,post,put,etc...) to play with different data fetched from URL.
  //Mehods will be defined automatically by retrofit_generator in part file.
  @POST("/indent={num}")
  Future<Post> getTasks(int num);
}
 

 //Only define class and declare its methods only,defination will be written 
 //by Json_serializable....
@JsonSerializable()
class Post{
  String name;
  int age;
 
 
  Post({this.name, this.age});
 
  factory Post.fromJson(Map<String, dynamic> json) =>  _$PostFromJson(json);
  Map<String, dynamic> toJson() => _$PostToJson(this);
}