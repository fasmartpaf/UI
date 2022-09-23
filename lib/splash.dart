import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/appConstant/Appcolors.dart';
import 'package:ui/routes.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
            child: Stack(
              children: [
                Positioned(
                  top: 330,
                  left: 97,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 79,
                    width: 144,
                  ),
                ),
                Positioned(
                  bottom: 60,
                  left: 40,
                  child: GestureDetector(
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
                                fontStyle: FontStyle.values[1],
                                fontWeight: FontWeight.w600,
                                fontSize: 26),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 30,
                  left: 84,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'don’t have an account?',
                        style: TextStyle(
                            fontSize: 15,
                            // fontWeight: FontWeight.bold,
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
                ),
              ],
            ) // Foreground widget here
            ),
      ),
    );
  }
}
