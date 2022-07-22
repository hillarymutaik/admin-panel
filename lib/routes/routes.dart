import 'package:car_wash/screens/dashboard/components/bookings/booking_status.dart';
import 'package:car_wash/screens/dashboard/components/bookings/bookings.dart';
import 'package:car_wash/screens/dashboard/components/categories.dart';
import 'package:car_wash/screens/dashboard/components/earnings.dart';
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
import 'package:car_wash/screens/dashboard/components/services/option_groups.dart';
import 'package:car_wash/screens/dashboard/components/services/service_options.dart';
import 'package:car_wash/screens/dashboard/components/services/services_list.dart';
import 'package:car_wash/screens/dashboard/components/services/swervice_reviews.dart';
import 'package:car_wash/screens/dashboard/components/settings/currencies.dart';
import 'package:car_wash/screens/dashboard/components/settings/push_notification.dart';
import 'package:car_wash/screens/dashboard/components/settings/roles_and_permissions.dart';
import 'package:car_wash/screens/dashboard/components/settings/social_authentication.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/custom_pages.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/global_settings.dart';
import 'package:car_wash/screens/dashboard/components/settings_media_library/mobile_app_settings/mobile_authentication.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_list.dart';
import 'package:car_wash/screens/dashboard/components/wallets/wallet_transaction.dart';

import '../screens/dashboard/components/coupons.dart';
import '../screens/dashboard/components/payments/payments.dart';
import '../screens/dashboard/components/services/create_service/create_service_forms.dart';
import '../screens/dashboard/components/settings/custom_fields.dart';
import '../screens/dashboard/components/settings/mail.dart';
import '../screens/dashboard/components/settings/users.dart';
import '../screens/dashboard/components/settings_media_library/mobile_app_settings/slides.dart';
import '../screens/dashboard/components/settings_media_library/mobile_app_settings/theme.dart';
import '../screens/main/main_screen.dart';

class PageRoutes {
  static const String home = MainScreen.routeName;
  static const String modules = ModuleScreen.routeName;
  static const String favourites = FavouriteScreen.routeName;
  static const String provider = ProviderScreen.routeName;
  static const String notification = NotificationScreen.routeName;
  static const String category = CategoryScreen.routeName;
  static const String service = ServiceOptions.routeName;
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

  static const String optiongroups = OptionGroups.routeName;
  static const String serviceoptions = ServiceOptions.routeName;
  static const String servicelists = ServiceList.routeName;
  static const String servicereviews = ServiceReviews.routeName;
  static const String currencies = Currencies.routeName;
  static const String customfields = CustomFields.routeName;
  static const String globalsettings = GlobalSettings.routeName;
  static const String mail = Mail.routeName;
  static const String pushnotification = PushNotifications.routeName;
  static const String rolespermissions = RolesPermissions.routeName;
  static const String socialauthentication = SocialAuthentication.routeName;
  static const String users = Users.routeName;
  static const String customepages = CustomPages.routeName;
  static const String slides = Slides.routeName;
  static const String theme = Themes.routeName;
  static const String mobileauthentication = MobileAuthentication.routeName;
  static const String createservice = CreateService.routeName;
  static const String earning = RecentFiles.routeName;


}