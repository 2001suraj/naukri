// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_clickable_card.dart';
import 'package:naukri/helper/build_container_top_button.dart';
import 'package:naukri/provider/card_selector.dart';
import 'package:naukri/view/base_widgets/view_builder_container.dart';
Container logbuildFeaturedCompanies(CardSelecterProvider cardSelecterProvider) {
    return Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          height: 450,
          color: Colors.white,
          child: Column(
            children: [
               buid_Container_top_button(
              titleText: "Featured companies ",
              buttonText: 'View all',
              ontap: () {}),
            
              SizedBox(
                width: 300,
                height: 35,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    primary: true,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    children: [
                      logbuildCard(
                        cardSelecterProvider,
                        text: 'All',
                        ontap: cardSelecterProvider.onchange,
                        value: cardSelecterProvider.clicked ? 0.3 : 0.1,
                      ),
                      SizedBox(width: 5),
                      logbuildCard(
                        cardSelecterProvider,
                        text: 'It services',
                        ontap: cardSelecterProvider.onchange1,
                        value: cardSelecterProvider.clicked1 ? 0.1 : 0.3,
                      ),
                      SizedBox(width: 5),
                      logbuildCard(
                        cardSelecterProvider,
                        text: 'BFSI',
                        ontap: cardSelecterProvider.onchange2,
                        value: cardSelecterProvider.clicked2 ? 0.1 : 0.3,
                      ),
                      SizedBox(width: 5),
                      logbuildCard(
                        cardSelecterProvider,
                        text: 'Techology',
                        ontap: cardSelecterProvider.onchange3,
                        value: cardSelecterProvider.clicked3 ? 0.1 : 0.3,
                      ),
                    ]),
              ),
               SizedBox(height: 20),
               //container with comapany image details and buttons
        ViewBuilderContainer(circularBorder: true,card_text: false,mcheight:300,cwidth:210),

            ],
          ),
        );
  }
