import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class GhadirAuthUser {
  GhadirAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<GhadirAuthUser> ghadirAuthUserSubject =
    BehaviorSubject.seeded(GhadirAuthUser(loggedIn: false));
Stream<GhadirAuthUser> ghadirAuthUserStream() =>
    ghadirAuthUserSubject.asBroadcastStream().map((user) => currentUser = user);
