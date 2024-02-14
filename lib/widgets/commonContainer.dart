// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
//import 'package:responsive_web_application/utils/colors.dart';

import '../utils/constants.dart';

Widget CommonContainerDesktop(
    String s1, s2, s3, mycontainerimage, bool imageleft) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 30),
    child: Row(
      children: [
        imageleft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(mycontainerimage),
                          fit: BoxFit.contain)),
                ),
              )
            : Container(),
        Expanded(
          child: Column(
            crossAxisAlignment:
                imageleft ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Text(
                s1.toUpperCase(),
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s2.toUpperCase(),
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  height: 1,
                  fontSize: w! / 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                s3,
                textAlign: imageleft ? TextAlign.right : TextAlign.left,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: Colors.white,
                  ),
                  label: const Text(
                    'Learn more',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
        ),
        !imageleft
            ? Expanded(
                child: Container(
                  height: 530,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(mycontainerimage),
                          fit: BoxFit.contain)),
                ),
              )
            : Container(),
      ],
    ),
  );
}

Widget CommonContainerMobile(
    String s1, s2, s3, mycontainerimage,) {
  return Container(
    color: Colors.black,
    padding: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 5),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(mycontainerimage), fit: BoxFit.contain)),
        ),
        SizedBox(height: 20,),
        Text(
          s1.toUpperCase(),
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s2.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            height: 1.1,
            fontSize: w! / 10,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          s3,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.white,
            ),
            label: const Text(
              'Learn more',
              style: TextStyle(color: Colors.white),
            ),),
      ],
    ),
  );
}
