import 'package:alquran_den/app/data/tema/palletwarna.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: KColor.kAppBar,
          secondary: KColor.kAppBar,
          onSecondary: KColor.kAppBar,
          surface: Colors.white,
          onSurface: Colors.white,
          background: Colors.white,
          onBackground: Colors.white,
          error: Colors.red,
          onError: Colors.red,
          brightness: Brightness.light,
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
          color: KColor.kAppBar,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 20,
          ),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.MENU_UTAMA,
      getPages: AppPages.routes,
    ),
  );
}
