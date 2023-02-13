
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/components/icons/Icons.dart';
import 'package:google_sign_in_android/google_sign_in_android.dart';
import 'package:mangxahoi/components/buttons/buttons.dart';
import 'package:mangxahoi/pages/login/formLogin/gPage.dart';
import 'package:dio/dio.dart';



class loginGoogle extends StatelessWidget {
  const loginGoogle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
      onTap: () => _signInWithFirebase(), 
    //   onTap: () {
    //      Navigator.push(
    // context,
    // PageRouteBuilder(
    //   pageBuilder: (context, animation1, animation2) => const hihi(),
    //   transitionDuration: const Duration(seconds: 0),
    // ),
    //      );
    //   },
      child: const Text('Đăng nhập bằng Firebase'),
      ),
      GestureDetector(
      onTap: () => _signInWithDofHunt(), 
    //   onTap: () {
    //      Navigator.push(
    // context,
    // PageRouteBuilder(
    //   pageBuilder: (context, animation1, animation2) => const hihi(),
    //   transitionDuration: const Duration(seconds: 0),
    // ),
    //      );
    //   },
      child: const Text('Đăng nhập bằng DofHunt'),
      )
      ]
    );
  }
}

Future<UserCredential> _signInWithFirebase () async{
    // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  debugPrint('accessToken=${googleAuth?.accessToken}');

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  final firebaseAccount = await FirebaseAuth.instance.signInWithCredential(credential);
  debugPrint('firebaseAccount=$firebaseAccount');

  return firebaseAccount;
}

Future<void> _signInWithDofHunt () async{
    // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  debugPrint('accessToken=${googleAuth?.accessToken}');

  final dio = Dio(BaseOptions(baseUrl: 'https://api.dofhunt.200lab.io'));
  final authRessponse = await dio.post(
    '/v1/auth/gmail',
    data: {'gmail_token': googleAuth?.accessToken},
  );
  final accessToken = authRessponse.data['data']['access_token'];
  debugPrint('signingWithDofHunt: accessToken=$accessToken');

}

