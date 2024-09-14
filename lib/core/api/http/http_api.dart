abstract class IHttpApi {
  /// get
  Future get(
    String uri, {
    Map<String, dynamic>? queryParameters,
  });
}
