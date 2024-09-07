class RequestTokenModel {
  String expiresAt;
  final String requestToken;

  RequestTokenModel({required this.expiresAt, required this.requestToken});
  factory RequestTokenModel.fromjson(json) {
    return RequestTokenModel(
        expiresAt: json["expires_at"], requestToken: json["request_token"]);
  }
}
