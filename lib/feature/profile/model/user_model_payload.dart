import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:gd_store/shared/typedefs/typedefs.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  // This is a method that would be used to create a new instance of the [UserInfoPayload]
  // with the new values serialized into the map
  UserInfoPayload({
    required UserId userId,
    required String? email,
    required String? fullname,
  }) : super({
          'id': userId,
          'email': email ?? '',
          'fullname': fullname ?? '',
        });
}
