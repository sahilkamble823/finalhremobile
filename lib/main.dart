import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hrms70dtech/view/screens/onboarding/loginScreen.dart';
import 'package:hrms70dtech/view/screens/splashScreen.dart';
import 'package:map_camera_flutter/map_camera_flutter.dart';
import 'view/screens/home/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final cameras = await availableCameras();
  final firstCamera = cameras.first;
  runApp(MyApp(
    camera: firstCamera,
  ));
}

class MyApp extends StatelessWidget {
  final CameraDescription camera;
  const MyApp({super.key, required this.camera});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            timePickerTheme: TimePickerThemeData(
              hourMinuteTextStyle: TextStyle(fontSize: 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: Colors.white,
            ),
            textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
              bodyMedium: GoogleFonts.poppins(textStyle: textTheme.bodyMedium),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff065A9D)),
            useMaterial3: true,
          ),
          routes: {
            '/': (context) => SplashScreen(),
            '/login': (context) => LoginScreen(),
            '/mainscreen': (context) => MainNavigationScreen(camera: camera),
          },
          // home:   const MainNavigationScreen(),
        );
      },
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   final textTheme = Theme.of(context).textTheme;
  //   return ScreenUtilInit(
  //     designSize: Size(
  //         MediaQuery.of(context).size.width, MediaQuery.of(context).size.width),
  //     minTextAdapt: true,
  //     splitScreenMode: true,
  //     child: GetMaterialApp(
  //       title: 'Flutter Demo',
  //       theme: ThemeData(
  //         timePickerTheme: TimePickerThemeData(
  //           hourMinuteTextStyle: TextStyle(fontSize: 30),
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  //           backgroundColor: Colors.white,
  //         ),
  //         textTheme: GoogleFonts.poppinsTextTheme(textTheme).copyWith(
  //           bodyMedium: GoogleFonts.poppins(textStyle: textTheme.bodyMedium),
  //         ),
  //         colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff065A9D)),
  //         useMaterial3: true,
  //       ),
  //       routes: {
  //         '/': (context) => SplashScreen(),
  //         '/login': (context) => LoginScreen(),
  //         '/mainscreen': (context) => MainNavigationScreen(camera: camera),
  //       },
  //       // home:   const MainNavigationScreen(),
  //     ),
  //   );
  // }
}
