import 'package:get/get.dart';
import '../langs/arabic.lang.dart';
import '../langs/english.lang.dart';
// import '../langs/persia.lang.dart';
// import '../langs/urdu.lang.dart';
// import '../langs/kurdish.lang.dart';
// import '../langs/russian.lang.dart';

class QuranTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': arabic,
        'en': english,
        // 'fa': persia,
        // 'ur': urdu,
        // 'ku': kurdish,
        // 'ru': russian,
      };
}
