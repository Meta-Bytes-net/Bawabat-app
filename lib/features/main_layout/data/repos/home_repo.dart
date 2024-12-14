import 'package:bwabat/core/helpers/extensions.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/helpers/constants.dart';
import '../../../../core/helpers/shared_pref_helper.dart';

class HomeRepo {
  Future<bool> signOut() async {
    await SharedPrefHelper.removeSecuredData(SharedPrefKeys.userToken);
    isLoggedInUser = false;
    String? userToken =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken);
    bool isSecuredDataRemoved =
        isLoggedInUser == false && userToken.isNullOrEmpty();
    if (kDebugMode) {
      print("isLoggedInUser $isLoggedInUser");
      print("userToken $userToken");
      print("isSecuredDataRemoved $isSecuredDataRemoved");
    }
    if (isSecuredDataRemoved) {
      if (kDebugMode) {
        print("Data has been removed $isSecuredDataRemoved");
      }
      return true;
    } else {
      return false;
    }
  }
}
