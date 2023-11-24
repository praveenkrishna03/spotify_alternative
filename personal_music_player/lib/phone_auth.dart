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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Form(
                key: _formkey,
                child: Container(
                  width: 800,
                  height: 1000,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 1000,
                          height: 1000,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.8500000238418579),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 35,
                        top: 146,
                        child: Container(
                          width: 310,
                          height: 254,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/logo.png'),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 130,
                        top: 158,
                        child: Text(
                          'EDUSCOPE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'JejuHallasan',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 61,
                        top: 427,
                        child: Container(
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
                              color: Color.fromARGB(255, 0, 0,
                                  0), // Set the input text color here
                            ),
                            cursorColor: Colors.black,
                            controller: email_controller,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 109, 109, 109)),
                              hintText: 'Enter your email',
                            ),

                            /*decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 109, 109, 109)),
                        hintText: 'Enter your pregnant month',
                      ),
                      */
                          ),
                        ),
                      ),
                      Positioned(
                        left: 61,
                        top: 495,
                        child: Container(
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
                              color: Color.fromARGB(255, 24, 24,
                                  24), // Set the input text color here
                            ),
                            cursorColor: Colors.black,
                            controller: password_controller,
                            obscureText: true,
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 109, 109, 109)),
                              hintText: 'Enter your password',
                            ),

                            /*decoration: InputDecoration(
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 109, 109, 109)),
                        hintText: 'Enter your pregnant month',
                      ),
                      */
                          ),
                        ),
                      ),
                      /*Positioned(
                  left: 106,
                  top: 607,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Enter'),
                    width: 148,
                    height: 34,
                    decoration: ShapeDecoration(
                      color: Color(0xFF757BAE),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                    ),
                  ),
                ),*/
                      Positioned(
                        left: 69,
                        top: 400,
                        child: SizedBox(
                          width: 167,
                          height: 18,
                          child: Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inria Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 69,
                        top: 471,
                        child: SizedBox(
                          width: 167,
                          height: 18,
                          child: Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inria Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 70,
                        top: 565,
                        child: SizedBox(
                          width: 164,
                          height: 15,
                          child: Text(
                            "don't have an account?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inria Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 220,
                        top: 551,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(0, 255, 255, 255),
                              shadowColor: Color.fromARGB(0, 255, 255, 255),
                            ),
                            onPressed: () {
                              /*Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignupPage(),
                                ),
                              );*/
                            },
                            child: Text(
                              'create one',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                                fontFamily: 'Inria Sans',
                                fontWeight: FontWeight.w400,
                              ),
                            )),
                      ),
                      Positioned(
                        left: 90,
                        top: 615,
                        child: SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
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
                                    'Login',
                                    style: TextStyle(
                                      color: Color(0xFF000000),
                                      fontSize: 16,
                                      fontFamily: 'Inconsolata',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                          ),
                          /*child: Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 16,
                        fontFamily: 'Inconsolata',
                        fontWeight: FontWeight.w400,
                      ),
                    ),*/
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
