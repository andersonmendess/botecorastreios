// import 'package:flt_worker_nullsafety/flt_worker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_storage/get_storage.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'ui/screens/home_screen.dart';

// final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
// final initializationSettingsAndroid = AndroidInitializationSettings('app_icon');
// final initializationSettings =
//     InitializationSettings(android: initializationSettingsAndroid);

// Future<void> worker(WorkPayload payload) async {
//   print(payload.id);
//   print("EXECUTANDO A TASK");
//   const androidPlatformChannelSpecifics = AndroidNotificationDetails(
//     '13',
//     'botecorastreios',
//     'notificações sobre rastreio',
//     importance: Importance.max,
//     priority: Priority.high,
//     showWhen: false,
//   );
//   const platformChannelSpecifics =
//       NotificationDetails(android: androidPlatformChannelSpecifics);

//   await flutterLocalNotificationsPlugin.show(
//       12, 'Memória RAM', 'Entrega Efetuada 2', platformChannelSpecifics,
//       payload: 'item x');

//   return Future.value();
// }

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  //flutterLocalNotificationsPlugin.initialize(initializationSettings, onSelectNotification: (_) async {});
  runApp(MyApp());
  // initializeWorker(worker);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
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

    // enqueueWorkIntent(WorkIntent(
    //   repeatInterval: Duration(seconds: 30),
    //   identifier: 'counter',
    //   initialDelay: Duration(seconds: 10),
    //   input: <String, dynamic>{},
    // ));

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
