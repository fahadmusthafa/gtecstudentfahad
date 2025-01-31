import 'package:flutter/material.dart';
import 'package:gtec/provider/student_provider.dart';
import 'package:gtec/screens/student/studentlogin.dart';
import 'package:gtec/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.presentError(details);
    debugPrint(details.toString());
  };
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StudentAuthProvider(), // Provide only StudentAuthProvider here
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'GTEC LMS',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const SplashScreen(),
      ),
    );
  }
}
