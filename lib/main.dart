import 'package:car_wash/screens/dashboard/components/bookings/booking_status.dart';
import 'package:car_wash/screens/dashboard/components/bookings/bookings.dart';
import 'package:car_wash/screens/dashboard/components/categories.dart';
import 'package:car_wash/screens/dashboard/components/coupons.dart';
import 'package:car_wash/screens/dashboard/components/faqs/faqs.dart';
import 'package:car_wash/screens/dashboard/components/faqs/faqs_category.dart';
import 'package:car_wash/screens/dashboard/components/favourites.dart';
import 'package:car_wash/screens/dashboard/components/modules.dart';
import 'package:car_wash/screens/dashboard/components/notifications.dart';
import 'package:car_wash/screens/dashboard/components/payments/payment_methods.dart';
import 'package:car_wash/screens/dashboard/components/payments/payment_status.dart';
import 'package:car_wash/screens/dashboard/components/payments/payments.dart';
import 'package:car_wash/screens/dashboard/components/payments/provider_payouts.dart';
import 'package:car_wash/screens/dashboard/components/providers_screen.dart';
import 'package:car_wash/screens/dashboard/components/services.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_list.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_transaction.dart';
import 'package:car_wash/screens/login/animated_login.dart';
import 'package:car_wash/screens/main/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:car_wash/constants.dart';
import 'package:car_wash/controllers/MenuController.dart';
import 'package:car_wash/screens/auth_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Database database = FirebaseHelper.initDatabase();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyBW-4pGMBR6lvu0E1HNhKoa5-fEcPBs_6A",
        authDomain: "car-wash-e356e.firebaseapp.com",
        projectId: "car-wash-e356e",
        storageBucket: "car-wash-e356e.appspot.com",
        messagingSenderId: "590379005904",
        appId: "1:590379005904:web:20c1a12590dbb50d3b6bd5",
        measurementId: "G-VC2J8DP20Q"),
  );
  runApp(CarWash());
}

class CarWash extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => MenuController(),
          ),
        ],
        child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Arcade Carwash',
            theme: ThemeData.light().copyWith(
              scaffoldBackgroundColor: bgColor,
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
                      .apply(bodyColor: Colors.black87),
              canvasColor: bgColor,
            ),
            home: AuthScreen(),
            routes: {
              // MainScreen.routeName: (context) => MainScreen(),
              ModuleScreen.routeName: (context) => ModuleScreen(),
              FavouriteScreen.routeName: (context) => FavouriteScreen(),
              ProviderScreen.routeName: (context) => ProviderScreen(),
              NotificationScreen.routeName: (context) => NotificationScreen(),
              CategoryScreen.routeName: (context) => CategoryScreen(),
              ServicesScreen.routeName: (context) => ServicesScreen(),
              Coupons.routeName: (context) => Coupons(),
              WalletList.routeName: (context) => WalletList(),
              WalletTransaction.routeName: (context) => WalletTransaction(),
              PaymentScreen.routeName: (context) => PaymentScreen(),
              PaymentMethod.routeName: (context) => PaymentMethod(),
              PaymentStatus.routeName: (context) => PaymentStatus(),
              ProviderPayout.routeName: (context) => ProviderPayout(),
              FaqsScreen.routeName: (context) => FaqsScreen(),
              FaqsCatScreen.routeName: (context) => FaqsCatScreen(),
              Bookings.routeName: (context) => Bookings(),
              BookingStatus.routeName: (context) => BookingStatus(),
            }));
  }
}
