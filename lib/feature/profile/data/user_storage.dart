import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:gd_store/feature/profile/model/user_model_payload.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';

@immutable
class UserInfoStorage {
  const UserInfoStorage();

  Future<bool> saveUserInfo({
    required UserId userId,
    required String? fullname,
    required String? email,
  }) async {
    try {
      // This is a reference to the user's information in the database
      final userInfo = await FirebaseFirestore.instance
          .collection(
            'users',
          )
          .where(
            'uid',
            isEqualTo: userId,
          )
          .limit(1)
          .get();

      // If the user's information is not found, then we create a new document
      if (userInfo.docs.isNotEmpty) {
        await userInfo.docs.first.reference.update({
          'fullname': fullname,
          'email': email ?? '',
        });

        return true;
      } else {
        final payLoad = UserInfoPayload(
          userId: userId,
          email: email,
          fullname: fullname,
        );
        await FirebaseFirestore.instance
            .collection('users')
            .doc(userId)
            .set(payLoad);
      }
      return true;
    } catch (e) {
      return false;
    }
  }
}