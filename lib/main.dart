import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Color(0xFF242526),
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark().copyWith(
          textSelectionTheme: TextSelectionThemeData(
            selectionColor: Colors.black,
            cursorColor: Color(0xFFC9E5FF),
            selectionHandleColor: Colors.black,
          ),
          backgroundColor: Color(0xFF302F34),
          canvasColor: Color(0xFF302F34),
          scaffoldBackgroundColor: Color(0xFF313035),
          primaryColor: Color(0xFFC9E5FF),
          accentColor: Color(0xFFC9E5FF),
          inputDecorationTheme: InputDecorationTheme(
            focusColor: Color(0xFFC9E5FF),
            labelStyle: TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Color(0xFF242526).withOpacity(0.7),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xFFC9E5FF).withOpacity(.3),
            )),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xFFC9E5FF).withOpacity(.3),
            )),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Color(0xFFC9E5FF).withOpacity(.6),
            )),
          )),
      home: HomeScreen(),
    );
  }
}
