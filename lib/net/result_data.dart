class ResultData {
  var data;
  int code;
  String message;

  bool isSuccess() {
    return code > 0;
  }

  ResultData(this.data, this.message, this.code);
}
