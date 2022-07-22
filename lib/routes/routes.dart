import 'package:car_wash/screens/dashboard/components/bookings/booking_status.dart';
import 'package:car_wash/screens/dashboard/components/bookings/bookings.dart';
import 'package:car_wash/screens/dashboard/components/categories.dart';
import 'package:car_wash/screens/dashboard/components/faqs/faqs.dart';
import 'package:car_wash/screens/dashboard/components/faqs/faqs_category.dart';
import 'package:car_wash/screens/dashboard/components/favourites.dart';
import 'package:car_wash/screens/dashboard/components/modules.dart';
import 'package:car_wash/screens/dashboard/components/notifications.dart';
import 'package:car_wash/screens/dashboard/components/payments/payment_list.dart';
import 'package:car_wash/screens/dashboard/components/payments/payment_methods.dart';
import 'package:car_wash/screens/dashboard/components/payments/payment_status.dart';
import 'package:car_wash/screens/dashboard/components/payments/provider_payouts.dart';
import 'package:car_wash/screens/dashboard/components/providers_screen.dart';
import 'package:car_wash/screens/dashboard/components/services.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_list.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_transaction.dart';

import '../screens/dashboard/components/coupons.dart';
import '../screens/dashboard/components/payments/payments.dart';
import '../screens/main/main_screen.dart';

class PageRoutes {
  static const String home = MainScreen.routeName;
  static const String modules = ModuleScreen.routeName;
  static const String favourites = FavouriteScreen.routeName;
  static const String provider = ProviderScreen.routeName;
  static const String notification = NotificationScreen.routeName;
  static const String category = CategoryScreen.routeName;
  static const String service = ServicesScreen.routeName;
  static const String booking = Bookings.routeName;
  static const String bookingtatus = BookingStatus.routeName;
  static const String faqs = FaqsScreen.routeName;
  static const String faqscat = FaqsCatScreen.routeName;
  static const String paymentlist = PaymentList.routeName;
  static const String taxes = PaymentMethod.routeName;
  static const String paymentstatus = PaymentStatus.routeName;
  static const String providerpayout = ProviderPayout.routeName;
  static const String walletlist = WalletList.routeName;
  static const String wallettransaction = WalletTransaction.routeName;
  static const String coupons = Coupons.routeName;
}