import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui/appConstant/Appcolors.dart';
import 'package:ui/routes.dart';

void Forgot(BuildContext context) {
  showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
            titlePadding: const EdgeInsets.only(top: 14, left: 20),
            contentPadding: const EdgeInsets.only(left: 20, top: 40),
            insetPadding:
                const EdgeInsets.only(left: 20, right: 20, top: 2, bottom: 120),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(16.0))),
            backgroundColor: const Color(0xff000000),
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Get.offAndToNamed(Routes.login);
                  },
                  child: Icon(
                    Icons.close,
                    color: whiteColor,
                    size: 25,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  '   Forgot your password?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: whiteColor,
                    fontFamily: 'poppins',
                  ),
                ),
              ],
            ),
            content: Text(
              'Enter your Email address and we will share a link to create a new password',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: whiteColor,
                fontFamily: 'poppins',
              ),
            ),
            actions: [
              SizedBox(height: 18),
              Container(
                height: MediaQuery.of(context).size.height / 21.5,
                width: MediaQuery.of(context).size.width / 0.3,
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(left: 10, top: 15, bottom: 3),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  cursorColor: blackColor,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                    suffixStyle: TextStyle(
                      color: Color(0xff3F4247),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: MediaQuery.of(context).size.height / 14,
                  alignment: AlignmentDirectional.center,
                  margin: const EdgeInsets.only(
                      top: 30, bottom: 5, left: 35, right: 35),
                  padding: const EdgeInsets.only(
                      left: 10, top: 5, right: 10, bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(16),
                    ),
                    color: secoundryColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Vector.png',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'send',
                        style: TextStyle(
                            color: whiteColor,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 26),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40)
            ],
          ));
}
