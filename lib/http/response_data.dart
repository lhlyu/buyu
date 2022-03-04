


class ResponseData<T> {
  final int code;
  final String msg;
  final T data;

  ResponseData(this.code, this.msg, this.data);


}