// ignore_for_file: avoid_unnecessary_containers, non_constant_identifier_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
//import 'package:responsive_web_application/utils/colors.dart';

import '../../utils/constants.dart';
import '../../widgets/commonContainer.dart';

class container3 extends StatefulWidget {
  const container3({super.key});

  @override
  State<container3> createState() => _container3State();
}

class _container3State extends State<container3> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobilecontainer3(),
      desktop: Desktopcontainer3(),
    );
  }

//  ==========DESKTOP ============

  Widget Desktopcontainer3() {
    return CommonContainerDesktop(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at \nmauris enim accumsan nisi, tincidunt vel. Enim \nipsum, amet quis ullamcorper eget ut.',
      illustration1,
      false,
    );
  }

// =========MOBILE================

  Widget Mobilecontainer3() {
    return CommonContainerMobile(
      'ALWAYS ONLINE',
      'Real-time \nsupport \nwith cloud',
      'Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.',
      illustration1,
      
    );
  }
}
