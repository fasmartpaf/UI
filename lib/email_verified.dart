import 'package:flutter/material.dart';
import 'package:ui/appConstant/Appcolors.dart';
import 'package:ui/verify_email.dart';

void Verified(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        titlePadding: EdgeInsets.only(top:14,left: 20),
        contentPadding: EdgeInsets.only(left: 20,top: 40),
        insetPadding: const EdgeInsets.only(left: 20,right: 20,top: 2,bottom: 120),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            backgroundColor: Color(0xff000000),
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    VerifyMail(context);
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
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/tick.png',
                      height: 45,
                      width: 30,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'You have successfully verified the account.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      fontStyle: FontStyle.normal,
                      color: whiteColor,
                      fontFamily: 'poppins',
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              SizedBox(height: 10,),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: AlignmentDirectional.center,
                  margin:
                      EdgeInsets.only(top: 1, bottom: 5, left: 30, right: 30),
                  padding:
                      EdgeInsets.only(left: 2, top: 5, right: 10, bottom: 10),
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
                    borderRadius: BorderRadius.all(
                      Radius.circular(18),
                    ),
                    color: secoundryColor,
                  ),
                  child: Text(
                    'go to dashboard',
                    style: TextStyle(
                        color: whiteColor,
                        fontFamily: 'Poppins',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 26),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ));
}
