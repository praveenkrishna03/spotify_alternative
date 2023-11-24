import 'package:flutter/material.dart';

//hello

class PhoneAuthPage extends StatefulWidget {
  @override
  PhoneAuthPage_state createState() => PhoneAuthPage_state();
}

class PhoneAuthPage_state extends State<PhoneAuthPage> {
  final _formkey = GlobalKey<FormState>();
  final email_controller = TextEditingController();
  final password_controller = TextEditingController();
  bool isLogin = false;
  bool isLoading = false;

  void dispose_un() {
    email_controller.dispose();
    super.dispose();
  }

  void dispose_pw() {
    password_controller.dispose();
    super.dispose();
  }

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
              Container(
                width: 250,
                height: 40,
                decoration: ShapeDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17),
                  ),
                ),
                child: TextFormField(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(
                        255, 0, 0, 0), // Set the input text color here
                  ),
                  cursorColor: Colors.black,
                  controller: email_controller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle:
                        TextStyle(color: Color.fromARGB(255, 109, 109, 109)),
                    hintText: 'Enter your phone number',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
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
