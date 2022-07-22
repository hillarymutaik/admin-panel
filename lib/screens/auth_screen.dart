import 'dart:html';
import 'package:car_wash/screens/login/login_components/widgets/auth_form.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  var _isLoading = false;
  final _auth = FirebaseAuth.instance;
  void _submitAuthForm(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) async {
    AuthenticatorResponse authenticatorResponse;
    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin) {
        final authenticatorResponse = await _auth.signInWithEmailAndPassword(
            email: email, password: password);
      } else {
        final authenticatorResponse =
            await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await FirebaseFirestore.instance
            .collection('newMembers')
            .doc(authenticatorResponse.user!.uid)
            .set(
          {
            'username': username,
            'email': email,
          },
        );
      }
    } on PlatformException catch (err) {
      var message = 'An error occured please check your credentials';
      if (err.message != null) {
        message = err.message.toString();
      }
      // Scaffold.of(ctx).s

      setState(() {
        _isLoading = true;
      });
    } catch (error) {
      print(error);
      setState(() {
        _isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthForm(_submitAuthForm, _isLoading),
    );
  }
}
