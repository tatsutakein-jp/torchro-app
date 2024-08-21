import 'package:app_backend/handler/contacts/get_contacts.dart';
import 'package:app_backend/handler/contacts/post_contacts.dart';
import 'package:dart_frog/dart_frog.dart';

Handler middleware(Handler handler) {
  return (context) async {
    return await handler
        .use(
          provider<GetContacts>(
            (context) => const GetContacts(),
          ),
        )
        .use(
          provider<PostContacts>(
            (context) => const PostContacts(),
          ),
        )
        .call(context);
  };
}
