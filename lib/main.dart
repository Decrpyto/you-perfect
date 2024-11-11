import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:youperfect/firebase_options.dart';
import 'package:youperfect/src/core/themes.dart';
import 'package:youperfect/src/frontend/views/auth.dart';

late final SharedPreferences preferences;

//late final FirebaseAnalytics analytics;
late final FirebaseCrashlytics crashlytics;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const fatalError = true;

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterError.onError = (errorDetails) {
    if (fatalError) {
      // If you want to record a "fatal" exception
      crashlytics.recordFlutterFatalError(errorDetails);
      // ignore: dead_code
    } else {
      // If you want to record a "non-fatal" exception
      crashlytics.recordFlutterError(errorDetails);
    }
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    if (fatalError) {
      // If you want to record a "fatal" exception
      crashlytics.recordError(error, stack, fatal: true);
      // ignore: dead_code
    } else {
      // If you want to record a "non-fatal" exception
      crashlytics.recordError(error, stack);
    }
    return true;
  };

  preferences = await SharedPreferences.getInstance();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'YouPerfect',
          debugShowCheckedModeBanner: false,
          theme: Themes.theme,
          home: const AuthScreen(),
        );
      },
    );
  }
}
