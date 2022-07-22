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
import 'package:car_wash/screens/dashboard/components/services/create_service/create_service_forms.dart';
import 'package:car_wash/screens/dashboard/components/services/option_groups.dart';
import 'package:car_wash/screens/dashboard/components/services/service_options.dart';
import 'package:car_wash/screens/dashboard/components/services/services_list.dart';
import 'package:car_wash/screens/dashboard/components/services/swervice_reviews.dart';
import 'package:car_wash/screens/dashboard/components/settings/currencies.dart';
import 'package:car_wash/screens/dashboard/components/settings/custom_fields.dart';
import 'package:car_wash/screens/dashboard/components/settings/global_setings.dart';
import 'package:car_wash/screens/dashboard/components/settings/mail.dart';
import 'package:car_wash/screens/dashboard/components/settings/push_notification.dart';
import 'package:car_wash/screens/dashboard/components/settings/roles_and_permissions.dart';
import 'package:car_wash/screens/dashboard/components/settings/social_authentication.dart';
import 'package:car_wash/screens/dashboard/components/settings/users.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/custom_pages.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/mobile_authentication.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/slides.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/theme.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_list.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_transaction.dart';
import 'package:car_wash/screens/main/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:car_wash/constants.dart';
import 'package:car_wash/controllers/MenuController.dart';
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
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black87),
        canvasColor: bgColor,
      ),
      home: LoginScreens(),
      routes: {
    // MainScreen.routeName: (context) => MainScreen(),
    ModuleScreen.routeName: (context) => ModuleScreen(),
    FavouriteScreen.routeName: (context) => FavouriteScreen(),
    ProviderScreen.routeName: (context) => ProviderScreen(),
    NotificationScreen.routeName: (context) => NotificationScreen(),
    CategoryScreen.routeName: (context) => CategoryScreen(),
    ServiceOptions.routeName: (context) => ServiceOptions(),
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

    OptionGroups.routeName: (context) => OptionGroups(),
    ServiceList.routeName: (context) => ServiceList(),
    ServiceReviews.routeName: (context) => ServiceReviews(),
    Currencies.routeName: (context) => Currencies(),
    CustomFields.routeName: (context) => CustomFields(),
    GlobalSettings.routeName: (context) => GlobalSettings(),
    Mail.routeName: (context) => Mail(),
    PushNotifications.routeName: (context) => PushNotifications(),
    RolesPermissions.routeName: (context) => RolesPermissions(),
    SocialAuthentication.routeName: (context) => SocialAuthentication(),
    Users.routeName: (context) => Users(),
    CustomPages.routeName: (context) => CustomPages(),
    Slides.routeName: (context) => Slides(),
    Themes.routeName: (context) => Themes(),
    MobileAuthentication.routeName: (context) => MobileAuthentication(),
        CreateService.routeName: (context) => CreateService(),
    }
    ));
  }
}
