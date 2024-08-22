import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show TargetPlatform, defaultTargetPlatform;

FirebaseOptions get firebaseOptions => switch (defaultTargetPlatform) {
      TargetPlatform.android => android,
      TargetPlatform.iOS => ios,
      _ => throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        ),
    };

const android = FirebaseOptions(
  apiKey: 'AIzaSyBrYJ24t3BwN-3N6Omm42G0AISKeOKUjrg',
  appId: '1:289717511027:android:879444e2dce7e2f817db06',
  messagingSenderId: '289717511027',
  projectId: 'torchro-fit-dev',
  storageBucket: 'torchro-fit-dev.appspot.com',
);

const ios = FirebaseOptions(
  apiKey: 'AIzaSyAeAdLVjn4x4JOQ2U3-T3e1bh6swTQaKHE',
  appId: '1:651997738463:ios:02f8dd3c1ea62bb2b2c06a',
  messagingSenderId: '289717511027',
  projectId: 'torchro-fit-dev',
  storageBucket: 'torchro-fit-dev.appspot.com',
  iosBundleId: 'fit.torchro.app.dev',
);
