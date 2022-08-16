// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_container_top_button.dart';
import 'package:naukri/view/base_widgets/view_builder_container.dart';

Container buildThirdContainer() {
  return Container(
    height: 300,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          // row of text ( top companies   and view all )
          buid_Container_top_button(
              titleText: "Top companies ",
              buttonText: 'View all',
              ontap: () {}),
          //container with image, comapny details, and buttons
          ViewBuilderContainer(
              circularBorder: false,
              card_text: true,
              mcheight: 220,
              cwidth: 180),
        ],
      ),
    ),
  );
}
