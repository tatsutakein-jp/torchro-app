import 'package:core_network_model/contact.dart';
import 'package:dart_frog/dart_frog.dart';

/// お問い合わせの一覧を取得するハンドラ
class GetContacts {
  const GetContacts();

  Future<Response> handle(RequestContext context) async {
    final fakeContacts = List.generate(
      10,
      (index) {
        final id = index + 1;
        return NetworkContact(
          id: id.toString(),
        );
      },
    );

    return Response.json(body: fakeContacts);
  }
}
