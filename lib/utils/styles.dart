import 'package:flutter/material.dart';
import 'package:responsive_web_application/utils/colors.dart';

ButtonStyle borderedbuttonStyle = ButtonStyle(
  elevation: MaterialStateProperty.all(0),
  backgroundColor: MaterialStateProperty.all(Colors.white),
  shape: MaterialStateProperty.all(RoundedRectangleBorder(
    side: BorderSide(color: AppColors.primary),
    borderRadius: BorderRadius.vertical(bottom: Radius.zero,top: Radius.zero),
  ))
);