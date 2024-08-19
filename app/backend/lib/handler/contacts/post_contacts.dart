import 'package:dart_frog/dart_frog.dart';

/// お問い合わせを作成するハンドラ
class PostContacts {
  const PostContacts();

  Future<Response> handle(RequestContext context) async {
    return Response.json();
  }
}
