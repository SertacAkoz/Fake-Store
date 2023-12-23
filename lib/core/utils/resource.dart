// ignore_for_file: constant_identifier_names

class Resource<T> {
  Status status;
  T? data;
  String? message;
  Resource({
    required this.status,
    required this.data,
    required this.message,
  });
  static Resource<T> success<T>(T data) {
    return Resource(status: Status.SUCCESS, data: data, message: null);
  }

  static Resource<T> error<T>(String message) {
    return Resource(status: Status.ERROR, data: null, message: message);
  }

  bool get state => status == Status.SUCCESS ? true : false;
}

enum Status { SUCCESS, ERROR }
