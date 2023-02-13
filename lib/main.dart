import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mangxahoi/common/blocs/chatty_bloc_observer.dart';
import 'package:mangxahoi/modules/firebase/widgets/firebase_initializer.dart';
import 'package:mangxahoi/pages/createPost/appBarCreatePost.dart';
import 'package:mangxahoi/pages/feeds/feedPage.dart';
import 'package:mangxahoi/pages/friend/friendHome.dart';
import 'package:mangxahoi/pages/login/forgetPass.dart';
import 'package:mangxahoi/pages/login/formRegister/registerPage.dart';
import 'package:mangxahoi/pages/login/formRegister/registerSussess.dart';
import 'package:mangxahoi/pages/login/login.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mangxahoi/pages/main/mainPage.dart';

// firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:mangxahoi/src/settings/settings_controller.dart';
import 'package:mangxahoi/src/settings/settings_service.dart';
// import 'firebase_options.dart';
// end firebase

Future<void> main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = SettingsController(SettingsService());

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  // await settingsController.loadSettings();

  // Bloc.observer =  ChattyBlocObserver();
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
  //   runApp(
  //   FirebaseInitializer(
  //     child: MyApp(settingsController: settingsController,),
  //   ),
  // );
}


ThemeData _baseTheme = ThemeData(
  fontFamily: "Roboto",
  canvasColor: Colors.transparent,
);


  class MyApp extends StatelessWidget {
      const MyApp({
    Key? key,
    // required this.settingsController,
  }) : super(key: key);

  // final SettingsController settingsController;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      debugShowCheckedModeBanner: false,
      // initialRoute: '/',
      // routes: <String, WidgetBuilder>{
      //   '/': (context) => const OnBoardingPage(),
      //   '/second': (context) => const TestNe(),
      // },
      title: 'Flutter Demo',
      // ignore: prefer_const_literals_to_create_immutables
      localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
      // ignore: prefer_const_literals_to_create_immutables
      supportedLocales: [
            const Locale('en', 'US'),
            const Locale('pl', 'PL'),
          ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      home: const loginPage(),
      // home: HomePage(),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        // '/': (context) => const HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/forgetpass': (context) => const forgetPassComponent(),
        '/login': (context) => const loginPage(),
        '/createaccount': (context) => const registerPage(),
        '/registersussess': (context) => const registerSussess(),
        '/feed': (context) => const feedHome(),
        '/createpost': (context) => const appBarCreatePost(),
        '/friendfeed': (context) => friendHome(),
      },
    );
    // return AnimatedBuilder(animation: settingsController, 
    // builder: (BuildContext context, Widget? child) {
    //     return MaterialApp(   
    //   debugShowCheckedModeBanner: false,
    //   // initialRoute: '/',
    //   // routes: <String, WidgetBuilder>{
    //   //   '/': (context) => const OnBoardingPage(),
    //   //   '/second': (context) => const TestNe(),
    //   // },
    //   title: 'Flutter Demo',
    //   // ignore: prefer_const_literals_to_create_immutables
    //   localizationsDelegates: [
    //         GlobalMaterialLocalizations.delegate,
    //         GlobalWidgetsLocalizations.delegate,
    //       ],
    //   // ignore: prefer_const_literals_to_create_immutables
    //   supportedLocales: [
    //         const Locale('en', 'US'),
    //         const Locale('pl', 'PL'),
    //       ],
    //   theme: ThemeData(
    //     // This is the theme of your application.
    //     //
    //     // Try running your application with "flutter run". You'll see the
    //     // application has a blue toolbar. Then, without quitting the app, try
    //     // changing the primarySwatch below to Colors.green and then invoke
    //     // "hot reload" (press "r" in the console where you ran "flutter run",
    //     // or simply save your changes to "hot reload" in a Flutter IDE).
    //     // Notice that the counter didn't reset back to zero; the application
    //     // is not restarted.
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //     scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
    //   ),
    //   home: const loginPage(),
    //   // home: HomePage(),
    //   initialRoute: '/',
    //   routes: {
    //     // When navigating to the "/" route, build the HomeScreen widget.
    //     // '/': (context) => const HomePage(),
    //     // When navigating to the "/second" route, build the SecondScreen widget.
    //     '/forgetpass': (context) => const forgetPassComponent(),
    //     '/login': (context) => const loginPage(),
    //     '/createaccount': (context) => const registerPage(),
    //     '/registersussess': (context) => const registerSussess(),
    //     '/feed': (context) => const feedHome(),
    //     '/createpost': (context) => const appBarCreatePost(),
    //     '/friendfeed': (context) => friendHome(),
    //   },
    // );

    //    },
    // );
    
  }
}
