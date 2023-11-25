import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:personal_music_player/auth/login.dart';
import 'package:personal_music_player/auth/otp_page.dart';
import 'package:pinput/pinput.dart';

//hello

class PhoneAuthPage extends StatefulWidget {
  @override
  PhoneAuthPage_state createState() => PhoneAuthPage_state();
}

class PhoneAuthPage_state extends State<PhoneAuthPage> {
  static String verify = "";
  var country_code = "+91";
  var number = "";
  final _formkey = GlobalKey<FormState>();
  final phone_controller = TextEditingController();
  //final password_controller = TextEditingController();
  bool isLogin = false;
  bool isLoading = false;

  void dispose_un() {
    phone_controller.dispose();
    super.dispose();
  }

  /*void dispose_pw() {
    password_controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
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
              Row(children: [
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 50,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "+91",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    )
                  ]),
                ),
                Container(
                  width: 250,
                  height: 40,
                  decoration: ShapeDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(
                          255, 0, 0, 0), // Set the input text color here
                    ),
                    onChanged: (value) {
                      number = value;
                    },
                    cursorColor: Colors.black,
                    controller: phone_controller,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                      hintText: 'Enter your phone number',
                    ),
                  ),
                ),
              ]),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(0, 255, 255, 255),
                    shadowColor: Color.fromARGB(0, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 17,
                      fontFamily: 'Inria Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  )),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAuth.instance.verifyPhoneNumber(
                    phoneNumber: '${country_code + number}',
                    verificationCompleted: (PhoneAuthCredential credential) {},
                    verificationFailed: (FirebaseAuthException e) {},
                    codeSent: (String verificationId, int? resendToken) {
                      PhoneAuthPage_state.verify = verificationId;
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => OTPAuthPage()));
                    },
                    codeAutoRetrievalTimeout: (String verificationId) {},
                  );
                  //if (_formkey.currentState!.validate()) {
                  //signInWithEmailAndPassword();
                },
                child: isLoading
                    ? Center(
                        child: CircularProgressIndicator(
                        color: Colors.white,
                      ))
                    : Text(
                        'Send OTP',
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
      ),
    );
  }
}
