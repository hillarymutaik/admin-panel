// import 'package:flutter/material.dart';
//
// import '../../../res/custom_colors.dart';
// import '../../../utils/g_authentication.dart';
// import '../../../widgets/authentication/google_sign_in/google_sign_in_button.dart';
// import '../../../widgets/custom_back_button.dart';
//
//
// class GSignInScreen extends StatefulWidget {
//   const GSignInScreen({Key? key}) : super(key: key);
//
//   @override
//   _GSignInScreenState createState() => _GSignInScreenState();
// }
//
// class _GSignInScreenState extends State<GSignInScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Palette.firebaseNavy,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 16.0,
//                 right: 16.0,
//                 bottom: 20.0,
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 children: [
//                   Row(),
//                   Expanded(
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Flexible(
//                           flex: 1,
//                           child: Image.asset(
//                             'assets/firebase_logo.png',
//                             height: 160,
//                           ),
//                         ),
//                         const SizedBox(height: 20),
//                         Text(
//                           'FlutterFire',
//                           style: TextStyle(
//                             color: Palette.firebaseYellow,
//                             fontSize: 40,
//                           ),
//                         ),
//                         Text(
//                           'Authentication',
//                           style: TextStyle(
//                             color: Palette.firebaseOrange,
//                             fontSize: 40,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   FutureBuilder(
//                     future:
//                         GAuthentication.initializeFirebase(context: context),
//                     builder: (context, snapshot) {
//                       if (snapshot.hasError) {
//                         return const Text('Error initializing Firebase');
//                       } else if (snapshot.connectionState ==
//                           ConnectionState.done) {
//                         return const GoogleSignInButton();
//                       }
//                       return CircularProgressIndicator(
//                         valueColor: AlwaysStoppedAnimation<Color>(
//                           Palette.firebaseOrange,
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             const CustomBackButton(),
//           ],
//         ),
//       ),
//     );
//   }
// }
