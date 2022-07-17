import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);


  @override
  // Widget build(BuildContext context) {
  //   return Drawer(
  //     child: ListView(
  //       children: [
  //         DrawerHeader(
  //           child: Image.asset("assets/images/logo.png"),
  //         ),
  //         DrawerListTile(
  //           title: "Dashboard",
  //           svgSrc: "assets/icons/menu_dashbord.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Modules",
  //           svgSrc: "assets/icons/menu_tran.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Notification",
  //           svgSrc: "assets/icons/menu_task.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Favourites",
  //           svgSrc: "assets/icons/menu_doc.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "App Management",
  //           svgSrc: "assets/icons/menu_store.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Providers",
  //           svgSrc: "assets/icons/menu_notification.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Categories",
  //           svgSrc: "assets/icons/menu_profile.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Services",
  //           svgSrc: "assets/icons/menu_profile.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Bookings",
  //           svgSrc: "assets/icons/menu_profile.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Coupons",
  //           svgSrc: "assets/icons/menu_profile.svg",
  //           press: () {},
  //         ),
  //
  //         DrawerListTile(
  //           title: "FAQs",
  //           svgSrc: "assets/icons/menu_profile.svg",
  //           press: () {},
  //         ),
  //         DrawerListTile(
  //           title: "Settings",
  //           svgSrc: "assets/icons/menu_setting.svg",
  //           press: () {},
  //         ),
  //       ],
  //     ),
  //   );
  // }


  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery
          .of(context)
          .size
          .width * .4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DrawerHeader(
                child: Image.asset("assets/images/logo.png"),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.all(Radius.circular(3)),
                ),
              ),
              // const SizedBox(
              //   height: 50,
              //   child: ListTile(
              //     tileColor: Colors.blueGrey,
              //     title: Text(
              //       'Arcade Carwash',
              //       style: TextStyle(color: Colors.white, fontSize: 22),
              //     ),
              //     leading: Icon(
              //       Icons.local_shipping_rounded,
              //       color: Colors.white,
              //     ),
              //   ),
              // ),
              // const Divider(color: Colors.lightGreenAccent, thickness: 2,),
              ListTile(
                leading: const Icon(Icons.report,color: Colors.blueGrey,),
                title: const Text('Dashboard'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/');
                },
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.blueGrey,),
                title: const Text('Modules'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed("/");
                },
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.notifications_outlined,color: Colors.blueGrey,),
                title: const Text('Notifications'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.favorite,color: Colors.blueGrey,),
                title: const Text('Favourites'),
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('App Managemnent'),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.manage_accounts_rounded,color: Colors.blueGrey,),
                title: const Text('Providers'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.folder_open_rounded,color: Colors.blueGrey,),
                title: const Text('Categories'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.design_services_rounded,color: Colors.blueGrey,),
                title: const Text('Services'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.today_rounded,color: Colors.blueGrey,),
                title: const Text('Bookings'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.calendar_view_day_rounded,color: Colors.blueGrey,),
                title: const Text('Coupons'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.help_rounded,color: Colors.blueGrey,),
                title: const Text('Faqs'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Payments'),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.payment_rounded,color: Colors.blueGrey,),
                title: const Text('Payments'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.wallet_rounded,color: Colors.blueGrey,),
                title: const Text('Wallets'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.price_change_rounded,color: Colors.blueGrey,),
                title: const Text('Earnings'),
                onTap: () {},
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Settings'),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.perm_media_rounded,color: Colors.blueGrey,),
                title: const Text('Medias Library'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.phone_iphone_rounded,color: Colors.blueGrey,),
                title: const Text('Moble App Settings'),
                onTap: () {},
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.settings_suggest_rounded,color: Colors.blueGrey,),
                title: const Text('Settings'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.black,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
