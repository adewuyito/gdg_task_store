import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/feature/auth/models/auth_result.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';

class Authenticator {
  Authenticator();

  User? user = FirebaseAuth.instance.currentUser;
  UserId? get userId => user?.uid;

  bool get isAlreadyLoggedIn => userId != null;
  String? get email => FirebaseAuth.instance.currentUser?.email;
  String? get displayImage => FirebaseAuth.instance.currentUser?.photoURL;
  String? get profileDefaultImage => _staticDisplay;
  String get displayName =>
      FirebaseAuth.instance.currentUser?.displayName ?? '';

  String? _staticDisplay;
  Future<void> logOut() async {
    // Sign out of all possible account forms
    await FirebaseAuth.instance.signOut();
  }

  Future<AuthResult> loginWithCredential({
    required String email,
    required String password,
  }) async {
    try {
      final _userCred = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (_userCred.user == null) {
        return AuthResult.failure;
      }

      if (displayImage == null) {
        _staticDisplay = await getStaticProfileImageDownloadURL();
      }

      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }

  Future<AuthResult> signUpWithCredential({
    required String email,
    required String password,
  }) async {
    try {
      final UserCredential _userCred =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      if (_userCred.user == null) {
        return AuthResult.failure;
      }


      _staticDisplay = await getStaticProfileImageDownloadURL();
      

      return AuthResult.success;
    } catch (e) {
      return AuthResult.failure;
    }
  }

  Future<AuthResult> updateUserName({required String newName}) async {
    try {
      final _user = user;
      if (_user != null) {
        await _user.updateProfile(displayName: newName);
        await _user.reload();
        user = FirebaseAuth.instance.currentUser; // Refresh user instance
      }
      return AuthResult.success;
    } catch (e) {
      debugPrint('Failed to update user name: $e');
      return AuthResult.failure;
    }
  }

  Future<String?> getStaticProfileImageDownloadURL() async {
    try {
      // Create a reference to the file location in the Firebase Storage
      final storageRef =
          FirebaseStorage.instance.ref().child('shared/profile_image.png');

      // Get the download URL
      final downloadURL = await storageRef.getDownloadURL();

      return downloadURL;
    } catch (e) {
      return null;
    }
  }
}

// TODO: Remove any ref to authenticator  ~ what is userPrevider for?
