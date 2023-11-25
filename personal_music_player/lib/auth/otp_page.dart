import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_music_player/create_playlist.dart';
import 'package:personal_music_player/auth/phone_auth.dart';
import 'package:personal_music_player/start.dart';
import 'package:pinput/pinput.dart';

class OTPAuthPage extends StatefulWidget {
  @override
  OTPAuthPage_state createState() => OTPAuthPage_state();
}

class OTPAuthPage_state extends State<OTPAuthPage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  var code = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: 1000,
        width: 1000,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8500000238418579),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 310,
              height: 254,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Phone Number',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Inria Sans',
                fontWeight: FontWeight.w400,
              ),
            ),
            Pinput(
              length: 6,
              showCursor: true,
              onChanged: (value) {
                code = value;
              },
            ),
            ElevatedButton(
              onPressed: () async {
                var smsCode = 'jbncmnb';
                PhoneAuthCredential credential = PhoneAuthProvider.credential(
                    verificationId: PhoneAuthPage_state.verify, smsCode: code);

                // Sign the user in (or link) with the credential
                await auth.signInWithCredential(credential);
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => StartPage()));
                //if (_formkey.currentState!.validate()) {
                //signInWithEmailAndPassword();
              },
              child: /* isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                      color: Colors.white,
                    ))
                  : */
                  Text(
                'Verify OTP',
                style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 16,
                  fontFamily: 'Inconsolata',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
