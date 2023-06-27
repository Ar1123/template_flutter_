class BodyParams<T> {
  final Map<String, dynamic>? tojson;

  BodyParams({ this.tojson});


  get getBodyToJson => tojson;
}
