import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class HakatonFirebaseUser {
  HakatonFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

HakatonFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<HakatonFirebaseUser> hakatonFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<HakatonFirebaseUser>(
      (user) {
        currentUser = HakatonFirebaseUser(user);
        return currentUser!;
      },
    );
