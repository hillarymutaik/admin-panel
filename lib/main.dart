import 'package:firebase_core/firebase_core.dart';
import 'package:car_wash/constants.dart';
import 'package:car_wash/controllers/MenuController.dart';
import 'package:car_wash/screens/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:car_wash/screens/login/login.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Database database = FirebaseHelper.initDatabase();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyANv4PgARMlX6IW-XgYoB9zWAvnWEBgVfI",
        authDomain: "car-wash-e356e.firebaseapp.com",
        projectId: "car-wash-e356e",
        storageBucket: "car-wash-e356e.appspot.com",
        messagingSenderId: "590379005904",
        appId: "1:590379005904:web:20c1a12590dbb50d3b6bd5",
        measurementId: "G-VC2J8DP20Q"
    ),
  );
  runApp(CarWash());
}

class CarWash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arcade Carwash',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        canvasColor: secondaryColor,
      ),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: Login(title: '',),
      ),
    );
  }
}
