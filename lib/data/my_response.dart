class MyResponse {
  MyResponse({
    this.data,
    required this.error,
    this.is422=false
  });

  dynamic data;
  bool is422;
  String error = "";
}