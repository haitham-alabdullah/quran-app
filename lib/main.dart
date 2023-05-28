import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/classes/constants.class.dart';
import 'src/classes/routes.class.dart';
import 'src/classes/translations.class.dart';
import 'src/providers/audio.provider.dart';
import 'src/providers/main.provider.dart';
import 'src/screens/quran.screen/text.quran.screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.lazyPut(() => MainProvider());
  Get.lazyPut(() => AudioProvider());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.themeData,
      darkTheme: Constants.themeDataDark,
      home: const TextQuranScreen(),
      getPages: Routes.routesList,
      initialRoute: Routes.homeRoute,
      translations: QuranTranslations(),
      locale: const Locale('ar'),
      fallbackLocale: const Locale('en'),
      defaultTransition: Transition.native,
      // onUnknownRoute: Routes.errorRoute,
    );
  }
}
