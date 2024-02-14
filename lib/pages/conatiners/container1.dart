// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web_application/utils/colors.dart';

import '../../utils/constants.dart';

class container1 extends StatefulWidget {
  const container1({super.key});

  @override
  State<container1> createState() => _container1State();
}

class _container1State extends State<container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

//  ==========DESKTOP ============

  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/8,vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                        fontSize: w! / 20,
                        fontWeight: FontWeight.bold,
                        height: 1.2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Helps you to organize your income and expenses',
                    style: TextStyle(color: Colors.grey),
                  ),
                   const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
                          ),
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_drop_down, color: Colors.black,),
                            label:const Text('Try Free Demo',style: TextStyle(color: Colors.black),)),
                      ),
                      const SizedBox(width:20),
                      const Text('— Web, iOs and Android',style: TextStyle(color: Colors.grey),)
                    ],
                  )
                ],
              ),
            ),
          ),
          //SizedBox(width: 20,),
          Expanded(
            child: Container(
              height: 530,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/illustration1.png'),
                fit: BoxFit.contain),
              ),
              
            
            ),
          )
        ],
      ),
    );
  }






// =========MOBILE================

  Widget MobileContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/8,vertical: 20),
      child: Column(
        children: [
           Container(
            height: w!/1.2,
            width: w!/1.2,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/illustration1.png'),
              fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            textAlign:TextAlign.center,
            'Track your \nExpenses to \nSave Money',
            style: TextStyle(
                fontSize: w! / 10,
                fontWeight: FontWeight.bold,
                height: 1),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
             textAlign:TextAlign.center,
            'Helps you to organize your income and expenses',
            style: TextStyle(color: Colors.grey,fontSize: 16),
          ),
           const SizedBox(
            height: 20,
          ),
          Container(
            child: ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(AppColors.primary),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)))
              ),
                onPressed: () {},
                icon: const Icon(Icons.arrow_drop_down, color: Colors.white,),
                label:const Text('Try Free Demo',style: TextStyle(color: Colors.white),)),
          ),
          const SizedBox(height:10),
          const Text(
             textAlign:TextAlign.center,
            '— Web, iOs and Android',
            style: TextStyle(color: Colors.grey,fontSize: 16),),
          //SizedBox(width: 20,),
         
        ],
      ),
    );
  }
}
