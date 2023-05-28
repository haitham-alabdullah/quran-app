import 'package:get/get.dart';

import '../screens/quran.screen/audio.quran.screen.dart';
import '../screens/quran.screen/text.quran.screen.dart';

class Routes {
  static String homeRoute = TextQuranScreen.routeName;
  static List<GetPage<dynamic>> routesList = [
    GetPage(
      name: TextQuranScreen.routeName,
      popGesture: false,
      page: () => const TextQuranScreen(),
      // middlewares: const [],
      transition: Transition.native,
    ),
    GetPage(
      name: AudioQuranScreen.routeName,
      page: () => const AudioQuranScreen(),
      // middlewares: const [],
      transition: Transition.native,
    ),
  ];
}
