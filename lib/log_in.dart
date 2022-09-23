import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/appConstant/Appcolors.dart';
import 'package:ui/forgot_password.dart';
import 'package:ui/routes.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            height: double.infinity,
            // width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash.png"), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 97,
                ),
                Container(
                  child: Image.asset(
                    'assets/logo.png',
                    height: 68,
                    width: 118,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'User Name',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: whiteColor,
                        fontFamily: 'poppins'),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 22,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff000000),
                          // color:  Color.fromRGBO(0, 0, 0, 0.5),
                          //shadow color
                          spreadRadius: -23, // spread radius
                          blurRadius: 20, // shadow blur radius
                          //  offset: const Offset(0, 0.5),
                          blurStyle: BlurStyle.normal),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 25,
                    // shadowColor: Color(0xff000000).withOpacity(.5),
                    shadowColor: Color(0xff000000).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextField(
                      cursorColor: blackColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'Password',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        color: whiteColor,
                        fontFamily: 'poppins'),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 22,
                  margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                  padding: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff000000),
                          // color:  Color.fromRGBO(0, 0, 0, 0.5),
                          //shadow color
                          spreadRadius: -23, // spread radius
                          blurRadius: 20, // shadow blur radius
                          //  offset: const Offset(0, 0.5),
                          blurStyle: BlurStyle.normal),
                    ],
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Card(
                    color: Colors.white,
                    elevation: 25,
                    // shadowColor: Color(0xff000000).withOpacity(.5),
                    shadowColor: Color(0xff000000).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: TextField(
                      cursorColor: blackColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Forgot(context);
                  },
                  child: Container(
                      alignment: AlignmentDirectional.topStart,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'forgot password?',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Plus Jakarta Sans',
                            decoration: TextDecoration.underline),
                      )),
                ),
                SizedBox(height: 25,),
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.login);
                  },
                  child: Card(
                    color: Colors.black,
                    elevation: 25,
                    // shadowColor: Color(0xff000000).withOpacity(.5),
                    shadowColor: Color(0xff000000).withOpacity(.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      alignment: AlignmentDirectional.center,
                      height: 65,
                      width: 278,
                      decoration: BoxDecoration(

                        // color: Colors.blue,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Color(0xff000000),
                              // color:  Color.fromRGBO(0, 0, 0, 0.5),
                              //shadow color
                              spreadRadius: -23, // spread radius
                              blurRadius: 20, // shadow blur radius
                              //  offset: const Offset(0, 0.5),
                              blurStyle: BlurStyle.normal),
                        ],
                        color: primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'log in',
                          style: TextStyle(
                              color: whiteColor,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,

                              fontWeight: FontWeight.w600,
                              fontSize: 26),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'don’t have an account?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                          fontFamily: 'poppins'),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.offAndToNamed(Routes.signup);
                      },
                      child: Text(
                        ' sign up',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: whiteColor,
                            fontFamily: 'Plus Jakarta Sans',
                            decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/Line 1.png',
                      width: 125,
                    ),
                    Text(
                      'Or continue with',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: whiteColor,
                        fontFamily: 'poppins',
                      ),
                    ),
                    Image.asset(
                      'assets/Line 2.png',
                      width: 125,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/applee.png',
                      height: 56,
                      width: 56,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/fb.png',
                      height: 56,
                      width: 56,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/google.png',
                      height: 56,
                      width: 56,
                    ),
                  ],
                ),
              ],
            ) // Foreground widget here
            ),
      ),
    );
  }
}
