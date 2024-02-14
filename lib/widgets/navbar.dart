//import 'package:flutter/foundation.dart';
//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_web_application/utils/colors.dart';
import 'package:responsive_web_application/utils/constants.dart';

import '../utils/styles.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile:MobileNavBar() ,
      desktop:DesktopNavBar() ,
    
    );
  }


// =========MOBILE UI=============


  Widget MobileNavBar() 
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal:20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }

  
// =========MOBILE UI=============


  Widget DesktopNavBar() 
  {
    return Container(
      margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      height:70,
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            navLogo(),
            Row(
              children: [
                navButton('Features'),
                navButton('About us'),
                navButton('Pricing'),
                navButton('Feedback'),
              ],
            ),
            Container(
              height: 40,
              child: ElevatedButton(
                style: borderedbuttonStyle,
                onPressed: () {},
               child: Text('Request a Demo',
               style: TextStyle(color: AppColors.primary),),),
            ),
        ],
      )

    );
  } 




  Widget navButton(String Buttontext)
  {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(onPressed: () {},
       child: Text(Buttontext, style: const TextStyle(color: Colors.white,fontSize: 18),)),
    );
  }




  Widget navLogo(){
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo))
      ),
    );
  }
}

//assets\images\logo.png