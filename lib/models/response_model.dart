class ResponseModel<T>{
  int? code;
  String? message="";
  T? content;

  ResponseModel({this.code, this.message, this.content});
  ResponseModel<T> fromJson(Map<String, dynamic> json) {
    return ResponseModel<T>(
    code : json['code'],
    message : json['message'],
    content: json['content'],
    );
  }
}