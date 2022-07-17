import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/logo.png"),
          ),
          DrawerListTile(
            title: "Dashboard",
            svgSrc: "assets/icons/menu_dashbord.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Modules",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Notification",
            svgSrc: "assets/icons/menu_task.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Favourites",
            svgSrc: "assets/icons/menu_doc.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "App Management",
            svgSrc: "assets/icons/menu_store.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Providers",
            svgSrc: "assets/icons/menu_notification.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Categories",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Services",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Bookings",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Coupons",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),

          DrawerListTile(
            title: "FAQs",
            svgSrc: "assets/icons/menu_profile.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Settings",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {},
          ),
        ],
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
