import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/login_page.dart';
import 'package:instagram_clone/screens/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb) {
    Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA7R2E8AtlEDpx96qwZnoSDUMXbxAoRXkg",
            authDomain: "instagramclone-6f7d2.firebaseapp.com",
            projectId: "instagramclone-6f7d2",
            storageBucket: "instagramclone-6f7d2.appspot.com",
            messagingSenderId: "888237045676",
            appId: "1:888237045676:web:977c02baabd179c8b6ec09"

        )
    );
  }
  else{
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          titleSmall: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(0, 0, 255, 1)
          ),
           titleMedium: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
             color: Colors.lightBlue,


           )
        ),


        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromRGBO(254, 206, 1, 1),
          primary: const Color.fromRGBO(0, 0, 0, 1),
          secondary: const Color.fromRGBO(0, 0, 255, 1)
        )

      ),
      home: const LoginPage(),
    );
  }
}
