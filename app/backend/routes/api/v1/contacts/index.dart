import 'package:app_backend/handler/contacts/get_contacts.dart';
import 'package:app_backend/handler/contacts/post_contacts.dart';
import 'package:dart_frog/dart_frog.dart';

Future<Response> onRequest(RequestContext context) async {
  final request = context.request;

  return switch (request.method) {
    HttpMethod.get => await context.read<GetContacts>().handle(context),
    HttpMethod.post => await context.read<PostContacts>().handle(context),
    _ => throw Exception('Unsupported method: ${request.method}'),
  };
}
