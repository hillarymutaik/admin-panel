import 'package:flutter/material.dart';

import 'animated_login.dart';



class LoginScreens extends StatefulWidget {
  /// Simulates the multilanguage, you will implement your own logic.
  /// According to the current language, you can display a text message
  /// with the help of [LoginTexts] class.
  const LoginScreens({Key? key}) : super(key: key);

  @override
  State<LoginScreens> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreens> {
  LanguageOption language = _languageOptions[1];
  AuthMode currentMode = AuthMode.login;

  @override
  Widget build(BuildContext context) {
    return LoginScreen(
      onLogin: LoginFunctions(context).onLogin,
      onSignup: LoginFunctions(context).onSignup,
      onForgotPassword: LoginFunctions(context).onForgotPassword,
      logo: Image.asset('assets/images/logo.png'),
      // backgroundImage: 'images/background_image.jpg',
      signUpMode: SignUpModes.both,
      socialLogins: _socialLogins(context),
      loginDesktopTheme: _desktopTheme,
      loginMobileTheme: _mobileTheme,
      loginTexts: _loginTexts,
      changeLanguageCallback: (LanguageOption? _language) {
        if (_language != null) {
          DialogBuilder(context).showResultDialog(
              'Successfully changed the language to: ${_language.value}.');
          if (mounted) setState(() => language = _language);
        }
      },
      languageOptions: _languageOptions,
      selectedLanguage: language,
      initialMode: currentMode,
      onAuthModeChange: (AuthMode newMode) => currentMode = newMode,
    );
  }

  static List<LanguageOption> get _languageOptions => const <LanguageOption>[
    LanguageOption(
      value: 'Turkish',
      code: 'TR',
      iconPath: 'assets/images/tr.png',
    ),
    LanguageOption(
      value: 'English',
      code: 'EN',
      iconPath: 'assets/images/en.png',
    ),
  ];

  /// You can adjust the colors, text styles, button styles, borders
  /// according to your design preferences for *DESKTOP* view.
  /// You can also set some additional display options such as [showLabelTexts].
  LoginViewTheme get _desktopTheme => _mobileTheme.copyWith(
    // To set the color of button text, use foreground color.
    actionButtonStyle: ButtonStyle(
      foregroundColor: MaterialStateProperty.all(Colors.white),
    ),
    dialogTheme: const AnimatedDialogTheme(
      languageDialogTheme: LanguageDialogTheme(
          optionMargin: EdgeInsets.symmetric(horizontal: 80)),
    ),
  );

  /// You can adjust the colors, text styles, button styles, borders
  /// according to your design preferences for *MOBILE* view.
  /// You can also set some additional display options such as [showLabelTexts].
  LoginViewTheme get _mobileTheme => LoginViewTheme(
    // showLabelTexts: false,
    backgroundColor: Colors.white60, // const Color(0xFF6666FF),
    formFieldBackgroundColor: Colors.white,
    formWidthRatio: 60,
    // actionButtonStyle: ButtonStyle(
    //   foregroundColor: MaterialStateProperty.all(Colors.blue),
    // ),
  );

  LoginTexts get _loginTexts => LoginTexts(
    nameHint: _username,
    login: _login,
    signUp: _signup,
  );

  /// You can adjust the texts in the screen according to the current language
  /// With the help of [LoginTexts], you can create a multilanguage scren.
  String get _username => language.code == 'TR' ? 'Kullanıcı Adı' : 'Username';

  String get _login => language.code == 'TR' ? 'Giriş Yap' : 'Login';

  String get _signup => language.code == 'TR' ? 'Kayıt Ol' : 'Sign Up';

  /// Social login options, you should provide callback function and icon path.
  /// Icon paths should be the full path in the assets
  /// Don't forget to also add the icon folder to the "pubspec.yaml" file.
  List<SocialLogin> _socialLogins(BuildContext context) => <SocialLogin>[
    SocialLogin(
        callback: () async => LoginFunctions(context).socialLogin('Google'),
        iconPath: 'assets/images/google.png'),
    SocialLogin(
        callback: () async =>
            LoginFunctions(context).socialLogin('Facebook'),
        iconPath: 'assets/images/facebook.png'),
    SocialLogin(
        callback: () async =>
            LoginFunctions(context).socialLogin('Linkedin'),
        iconPath: 'assets/images/linkedin.png'),
  ];
}

class LoginFunctions {
  /// Collection of functions will be performed on login/signup.
  /// * e.g. [onLogin], [onSignup], [socialLogin], and [onForgotPassword]
  const LoginFunctions(this.context);
  final BuildContext context;

  /// Login action that will be performed on click to action button in login mode.
  Future<String?> onLogin(LoginData loginData) async {
    DialogBuilder(context).showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pop();
    DialogBuilder(context).showResultDialog('Successful login.');
    return null;
  }

  /// Sign up action that will be performed on click to action button in sign up mode.
  Future<String?> onSignup(SignUpData signupData) async {
    DialogBuilder(context).showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pop();
    DialogBuilder(context).showResultDialog('Successful sign up.');
    return null;
  }

  /// Social login callback example.
  Future<String?> socialLogin(String type) async {
    DialogBuilder(context).showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pop();
    DialogBuilder(context)
        .showResultDialog('Successful social login with $type.');
    return null;
  }

  /// Action that will be performed on click to "Forgot Password?" text/CTA.
  /// Probably you will navigate user to a page to create a new password after the verification.
  Future<String?> onForgotPassword(String email) async {
    DialogBuilder(context).showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).pop();
    // You should determine this path and create the screen.
    // Navigator.of(context).pushNamed('/forgotPass');
    return null;
  }
}

class DialogBuilder {
  /// Builds various dialogs with different methods.
  /// * e.g. [showLoadingDialog], [showResultDialog]
  const DialogBuilder(this.context);
  final BuildContext context;

  /// Example loading dialog
  Future<void> showLoadingDialog() => showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => WillPopScope(
      onWillPop: () async => false,
      child: const AlertDialog(
        content:  SizedBox(
          width: 100,
          height: 100,
          child: Center(
            child: CircularProgressIndicator(
              color: Colors.brown,
              strokeWidth: 3,
            ),
          ),
        ),
      ),
    ),
  );

  /// Example result dialog
  Future<void> showResultDialog(String text) => showDialog(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      content: SizedBox(
        height: 100,
        width: 100,
        child: Center(child: Text(text, textAlign: TextAlign.center)),
      ),
    ),
  );
}

// class Login extends StatefulWidget {
//   Login({Key? key, required this.title}) : super(key: key);
//   final String title;
//   @override
//   _LoginState createState() => _LoginState();
// }
//
// class _LoginState extends State<Login> {
//   bool isChecked = false;
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final email = TextFormField(
//       keyboardType: TextInputType.emailAddress,
//       autofocus: false,
//       decoration: InputDecoration(
//         hintText: 'Email',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//       ),
//     );
//
//     final password = TextFormField(
//       autofocus: false,
//       initialValue: '',
//       obscureText: true,
//       decoration: InputDecoration(
//         hintText: 'Password',
//         contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//       ),
//     );
//
//     final loginButton = Container(
//       width: MediaQuery.of(context).size.width / 2.5,
//       child: RaisedButton(
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => MainScreen()),
//           );
//         },
//         padding: EdgeInsets.all(12),
//         color: gColor,
//         child: Text('Login',
//             style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold)),
//       ),
//     );
//
//     final forgotLabel = FlatButton(
//       child: Text(
//         'Forgot password?',
//         style: TextStyle(color: Colors.black54),
//       ),
//       onPressed: () {},
//     );
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Stack(
//         children: <Widget>[
//           Column(
//             children: <Widget>[
//               Container(
//                 height: MediaQuery.of(context).size.height / 2,
//                 width: MediaQuery.of(context).size.width,
//                 color: Colors.blue,
//               ),
//               Container(
//                 height: MediaQuery.of(context).size.height / 2,
//                 width: MediaQuery.of(context).size.width,
//                 color: gColor,
//               ),
//             ],
//           ),
//           Center(
//             child: Card(
//               elevation: 1.0,
//               child: Container(
//                 padding: EdgeInsets.all(12),
//                 width: MediaQuery.of(context).size.width / 2.5,
//                 height: MediaQuery.of(context).size.height / 1.5,
//                 child: Column(
//                   children: <Widget>[
//                     SizedBox(height: 1.0),
//                     Center(
//                       child:Image.asset(
//                         "assets/images/logo.png",
//                         height: 100.0,
//                       ),
//                     ),
//                     SizedBox(height: 8.0),
//                     email,
//                     SizedBox(height: 8.0),
//                     password,
//                     SizedBox(height: 24.0),
//                     if (Responsive.isMobile(context)) Column(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: <Widget>[
//                         if (Responsive.isMobile(context)) Column(),
//                         Row(
//                           children: <Widget>[
//                             Checkbox(
//                               value: isChecked,
//                               onChanged: (value) {
//                                 setState(() {
//                                   isChecked = value!;
//                                 });
//                               },
//                             ),
//                             Text("Remember Me")
//                           ],
//                         ),
//                         forgotLabel,
//                       ],
//                     ),
//                     SizedBox(height: 25.0),
//                     loginButton,
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }