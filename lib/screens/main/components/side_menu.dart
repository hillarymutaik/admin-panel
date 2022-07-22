import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../routes/routes.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

//   @override
//   _ComplexDrawerPageState createState() => _ComplexDrawerPageState();
// }
//
// class _ComplexDrawerPageState extends State<SideMenu> with SingleTickerProviderStateMixin{
//   int active = 0;
//   late TabController tabController = TabController(length: 5,vsync: this,initialIndex: 0);
//   //TODO: Add title
//   @override
//   void initState() {
//     super.initState();
//     tabController = TabController(length: 5, vsync: this, initialIndex: 0)
//       ..addListener(() {
//         setState(() {
//           active = tabController.index;
//         });
//       });
//   }



  @override
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
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.home),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.dashboard,color: Colors.blueGrey,),
                title: const Text('Modules'),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.modules),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.notifications_outlined,color: Colors.blueGrey,),
                title: const Text('Notifications'),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.notification),
                // onTap: () {
                //   Navigator.of(context).pushReplacementNamed("/notification");
                // },
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.favorite,color: Colors.blueGrey,),
                title: const Text('Favourites'),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.favourites),
                // onTap: () {
                //   Navigator.of(context).pushReplacementNamed("/favourites");
                // },
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('App Management'),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.manage_accounts_rounded,color: Colors.blueGrey,),
                title: const Text('Providers'),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.provider),
                // onTap: () {
                //   Navigator.of(context).pushReplacementNamed("/providers");
                // },
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.folder_open_rounded,color: Colors.blueGrey,),
                title: const Text('Categories'),
                onTap: () =>
                    Navigator.pushReplacementNamed(context, PageRoutes.category),
                // onTap: () {
                //   Navigator.of(context).pushReplacementNamed("/categories");
                // },
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.design_services_rounded,color: Colors.blueGrey,),
                title: const Text('Services'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.service),
                // onTap: () {
                //   Navigator.pushNamed(context, '/services');
                // },
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.today_rounded,color: Colors.blueGrey,),
                title: const Text('Bookings'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.booking),

                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.calendar_view_day_rounded,color: Colors.blueGrey,),
                title: const Text('Coupons'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.coupons),

              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.help_rounded,color: Colors.blueGrey,),
                title: const Text('Faqs'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.faqs),

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
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.paymentlist),

                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.wallet_rounded,color: Colors.blueGrey,),
                title: const Text('Wallets'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.walletlist),

              ),
              // const Divider(),
              ListTile(
                leading: const Icon(Icons.price_change_rounded,color: Colors.blueGrey,),
                title: const Text('Earnings'),
                onTap: () => Navigator.pushReplacementNamed(context, PageRoutes.earning),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Settings'),
              const Divider(),
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
              const Text('Settings'),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.settings_suggest_rounded,color: Colors.blueGrey,),
                title: const Text('Global Settings'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.people,color: Colors.blueGrey,),
                title: const Text('Users'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.rotate_left_sharp,color: Colors.blueGrey,),
                title: const Text('Roles & Permissions'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.local_activity_outlined,color: Colors.blueGrey,),
                title: const Text('Localization'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.transfer_within_a_station,color: Colors.blueGrey,),
                title: const Text('Transactions'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.attach_money_outlined,color: Colors.blueGrey,),
                title: const Text('Currencies'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.discount,color: Colors.blueGrey,),
                title: const Text('Taxes'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.monetization_on_sharp,color: Colors.blueGrey,),
                title: const Text('Payment'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.social_distance_outlined,color: Colors.blueGrey,),
                title: const Text('Social Authentication'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.notifications_active_outlined,color: Colors.blueGrey,),
                title: const Text('Push Notification'),
                onTap: () {},
                trailing: const Icon(Icons.chevron_left_rounded),
              ),
              ListTile(
                leading: const Icon(Icons.settings_suggest_rounded,color: Colors.blueGrey,),
                title: const Text('Mail'),
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

//
// /// This is BAD since you only return one boolean value and I needed multiple items from  the list to be toggled
// bool _active = false;
//
// void _handleTap(index) {
//   setState(() {
//     _active = !_active;
//   });
// }
//
// //// This is GOOD (or at least the right approach) since I needed multiple choices
// /// this stores the indices of active items like @pskink said, so you can toggle each item in the list
// Set active = {};
//
// void _handleTap(index) {
//   setState(() {
//     active.contains(index) ? active.remove(index) : active.add(index);
//   });
// }
//
// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//       body: SafeArea(
//       child: FutureBuilder<HTTPResponse<List<UserData>>>(
//       future: _getUserList(),
//   builder: (context, snapshot) {
//   if (snapshot.hasData) {
//   return Consumer<UserDataModel>(
//   builder: (context, userData, child) {
//   return ListView.builder(
//   itemCount: userData.userList.length,
//   itemBuilder: (context, index) {
//   UserData users =
//   userData.getUserbyIndex(index);
//   return Card(
//   child: Container(
//   decoration: BoxDecoration(
//   /// This is where the widget checks which item in the list is selected and change color when you trigger the _handleTap() method
//   color: active.contains(index) ? Colors.white : Colors.grey[400],
//   ),
//   padding: EdgeInsets.all(10.0),
//   child: PopupMenuButton<UserDropDownMenu>(
//   onSelected: (action) {
//   switch (action) {
//   case UserDropDownMenu.activity:
// // where you call the method and the colors of the widget toggle
//   _handleTap(index);
//   break;
//   }
//   },
//   itemBuilder: (BuildContext context) =>
//   const PopupMenuItem<UserDropDownMenu>(
//   value: UserDropDownMenu.activity,
//   child: Text('Active/Inactive'),
//   ),
//   ),
//   }
//   );
//   },
//   );
//   },
//   );
//   } else if (snapshot.hasError) {
//   return Text("${snapshot.error}");
//   }
//   return Container();
// },
// ),
// ),
// );
// }
// }

//Install firebase SDK
// npm install firebase
//
// // Import the functions you need from the SDKs you need
// import { initializeApp } from "firebase/app";
// import { getAnalytics } from "firebase/analytics";
// // TODO: Add SDKs for Firebase products that you want to use
// // https://firebase.google.com/docs/web/setup#available-libraries
//
// // Your web app's Firebase configuration
// // For Firebase JS SDK v7.20.0 and later, measurementId is optional
// const firebaseConfig = {
//   apiKey: "AIzaSyANv4PgARMlX6IW-XgYoB9zWAvnWEBgVfI",
//   authDomain: "car-wash-e356e.firebaseapp.com",
//   projectId: "car-wash-e356e",
//   storageBucket: "car-wash-e356e.appspot.com",
//   messagingSenderId: "590379005904",
//   appId: "1:590379005904:web:20c1a12590dbb50d3b6bd5",
//   measurementId: "G-VC2J8DP20Q"
// };
//
// // Initialize Firebase
// const app = initializeApp(firebaseConfig);
// const analytics = getAnalytics(app);


//#Install firebase CLI
// npm install -g firebase-tools

//1.Deploy firebase hosting
//firebase login

//initiate project
// firebase init

//Deploy web app
//firebase deploy
