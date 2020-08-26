// GENERATED CODE - DO NOT MODIFY BY HAND
 
part of 'post_api.dart';
 
// **************************************************************************
// RetrofitGenerator
// **************************************************************************
 
 
Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
    name: json['name'] as String,
    age: json['age'] as int,
  );
}
 
Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
  'name': instance.name,
  'age': instance.age
};
class _RestClient implements RestClient {
  _RestClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    this.baseUrl ??= 'http://www.json-generator.com/api/json/get/cffBLmFKeW?';
  }
 
  final Dio _dio;
 
  String baseUrl;
 
  @override
  getTasks(num) async {
    ArgumentError.checkNotNull(num, 'num');
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final Response<Map<String, dynamic>> _result = await _dio.request(
        '/indent={num}',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'POST',
            headers: <String, dynamic>{},
            extra: _extra,
            baseUrl: baseUrl),
        data: _data);
    final value = Post.fromJson(_result.data);
    return value;
  }
}