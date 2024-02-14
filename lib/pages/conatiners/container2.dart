// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web_application/utils/colors.dart';
import 'package:responsive_web_application/utils/constants.dart';

class container2 extends StatefulWidget {
  const container2({super.key});

  @override
  State<container2> createState() => _container1State();
}

class _container1State extends State<container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer2(),
      desktop: DesktopContainer2(),
    );
  }

//  ==========DESKTOP ============

  Widget DesktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  top: -20,
                  right: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(vector1), fit: BoxFit.contain),
                    ),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 720,
                    decoration: const BoxDecoration(
                        image: DecorationImage(image: AssetImage(dashboard))),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Desktopcompanylogo(fb),
                  Desktopcompanylogo(google),
                  Desktopcompanylogo(cocacola),
                  Desktopcompanylogo(samsung),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

// =========MOBILE================

  Widget MobileContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 0, top: 20),
            child: Container(
              width: double.infinity,
              height: 195,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(dashboard), fit: BoxFit.contain)),
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  companylogo(fb),
                  companylogo(google),
                  companylogo(cocacola),
                  companylogo(samsung),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

///////////////////////////////////////

  Widget companylogo(String mycompanylogo_image) {
    return Container(
      height: 36,
      width: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(mycompanylogo_image), fit: BoxFit.contain),
      ),
    );
  }

  Widget Desktopcompanylogo(String mycompanylogo_image) {
    return Container(
      height: 36,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(mycompanylogo_image), fit: BoxFit.contain),
      ),
    );
  }

}
