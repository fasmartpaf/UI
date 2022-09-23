import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/appConstant/Appcolors.dart';
import 'package:ui/email_verified.dart';
import 'package:ui/routes.dart';

void VerifyMail(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            titlePadding: const EdgeInsets.only(top: 14, left: 20),
            contentPadding: const EdgeInsets.only(left: 20, top: 40),

            insetPadding:
                const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 120),
            shape: const RoundedRectangleBorder(

                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            backgroundColor:  Color(0xff000000),
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.signup);
                  },
                  child: Icon(
                    Icons.close,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  'Verify email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: whiteColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ],
            ), // To display the title it is optional
            content: Text(
              'An email with a verification code has been sent to your email',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: whiteColor,
                fontFamily: 'poppins',
              ),
            ),
            actions: [
              const SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 21.5,
                width: MediaQuery.of(context).size.width / 0.3,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: const EdgeInsets.only(left: 20, top: 12),
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xff000000),
                        // color:  Color.fromRGBO(0, 0, 0, 0.5),
                        //shadow color
                        spreadRadius: -5, // spread radius
                        blurRadius: 20, // shadow blur radius
                        //  offset: const Offset(0, 0.5),
                        blurStyle: BlurStyle.normal),
                  ],
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Card(
                  elevation: 25,
                  // shadowColor: Color(0xff000000).withOpacity(.5),
                  shadowColor: const Color(0xff000000).withOpacity(.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextField(
                    cursorColor: blackColor,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'verification code',
                      suffixStyle: TextStyle(
                        color: Colors.black12,
                        fontSize: 16,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Verified(context);
                },
                child: Container(
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.only(
                      top: 30, bottom: 5, left: 40, right: 40),
                  padding: const EdgeInsets.only(
                      left: 10, top: 5, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          color: Color(0xff000000),
                          // color:  Color.fromRGBO(0, 0, 0, 0.5),
                          //shadow color
                          spreadRadius: -5, // spread radius
                          blurRadius: 20, // shadow blur radius
                          //  offset: const Offset(0, 0.5),
                          blurStyle: BlurStyle.normal),
                    ],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: secoundryColor,
                  ),
                  child: Text(
                    'verify',
                    style: TextStyle(
                        color: whiteColor,
                        fontStyle: FontStyle.normal,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        fontSize: 24),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 278,
                child: Row(
                  children: [
                    Text(
                      '      didn’t recieve a code?',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: whiteColor,
                          fontFamily: 'poppins',
                          letterSpacing: -1),
                    ),
                    Text(
                      ' Request again ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: whiteColor,
                        fontFamily: 'Plus Jakarta Sans',
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ));
}
