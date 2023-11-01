import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    Uint8List? file,
  }) async {
    if (email.isEmpty || password.isEmpty || username.isEmpty) {
      return "Please fill all the fields";
    }

    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      final User user = userCredential.user;

      // Create an instance of the User class and set the user data
      final users = Users(
        uid: user.uid,
        email: email,
        username: username,
        bio: "",
        photoUrl: "",
        followers: [],
        following: [],
        posts: [],
        saved: [],
        searchKey: username.toLowerCase(),
      );

      // Store the user data in Firestore
      await _firestore.collection("users").doc(user.uid).set(users.toJson());

      return "success";
    } catch (e) {
      return e.toString();
    }
  }
}
