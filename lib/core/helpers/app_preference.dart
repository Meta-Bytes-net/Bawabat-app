import 'package:shared_preferences/shared_preferences.dart';

const String prefsKeyIsUserLoggedIn = 'is_user_logged_in';
const String prefsKeyIsManageAudinceOpened = 'is_manage_audience_opened';
const String prefsKeyUserId = 'user_id';

class AppPreferences {
  final SharedPreferences _sharedPreferences;

  AppPreferences(this._sharedPreferences);

  // Future<String> getAppLanguage() async {
  //   String? language = _sharedPreferences.getString(PREFS_KEY_LANG);
  //   if (language != null && language.isNotEmpty) {
  //     return language;
  //   } else {
  //     // return default lang
  //     return LanguageType.ENGLISH.getValue();
  //   }
  // }

  // Future<void> changeAppLanguage() async {
  //   String currentLang = await getAppLanguage();

  //   if (currentLang == LanguageType.ARABIC.getValue()) {
  //     // set english
  //     _sharedPreferences.setString(
  //         PREFS_KEY_LANG, LanguageType.ENGLISH.getValue());
  //   } else {
  //     // set arabic
  //     _sharedPreferences.setString(
  //         PREFS_KEY_LANG, LanguageType.ARABIC.getValue());
  //   }
  // }

  // Future<Locale> getLocal() async {
  //   String currentLang = await getAppLanguage();

  //   if (currentLang == LanguageType.ARABIC.getValue()) {
  //     return ARABIC_LOCAL;
  //   } else {
  //     return ENGLISH_LOCAL;
  //   }
  // }

  // on boarding

  // Future<void> setOnBoardingScreenViewed() async {
  //   _sharedPreferences.setBool(PREFS_KEY_ONBOARDING_SCREEN_VIEWED, true);
  // }

  // Future<bool> isOnBoardingScreenViewed() async {
  //   return _sharedPreferences.getBool(PREFS_KEY_ONBOARDING_SCREEN_VIEWED) ??
  //       false;
  // }

  //login

  // Future<void> setUserLoggedIn() async {
  //   _sharedPreferences.setBool(PREFS_KEY_IS_USER_LOGGED_IN, true);
  // }

  // Future<bool> isUserLoggedIn() async {
  //   return _sharedPreferences.getBool(PREFS_KEY_IS_USER_LOGGED_IN) ?? false;
  // }

  // Future<void> logout() async {
  //   _sharedPreferences.remove(PREFS_KEY_IS_USER_LOGGED_IN);
  // }
//  cache userId

  Future<void> setUserId(String userId) async {
    _sharedPreferences.setString(prefsKeyUserId, userId);
  }

  Future<String?> getUserId() async {
    return _sharedPreferences.getString(prefsKeyUserId);
  }

  Future<void> setManageAudienceOpened() async {
    _sharedPreferences.setBool(prefsKeyIsManageAudinceOpened, true);
  }

  Future<bool> isManageAudinceOpened() async {
    return _sharedPreferences.getBool(prefsKeyIsManageAudinceOpened) ?? false;
  }

  Future<void> removeManageAudienceOpened() async {
    _sharedPreferences.remove(prefsKeyIsManageAudinceOpened);
  }
}
