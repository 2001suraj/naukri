// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:naukri/provider/card_selector.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/secondContainer.dart';
import 'package:naukri/view/screen/before_login_screen/homeScreen/components/thirdContainer.dart';
import 'package:naukri/view/screen/search_screen/components/build_featured_companies.dart';
import 'package:naukri/view/screen/search_screen/components/build_sponsored_container.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CardSelecterProvider cardSelecterProvider =
        Provider.of<CardSelecterProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          //search job container
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Search Jobs",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                // for text field  and search button
                buildTextFieldcolumn(Sheight: 40)
              ],
            ),
          ),
          SizedBox(height: 9),

          //top compaines container
          // other screen components
          buildThirdContainer(),
          SizedBox(height: 9),

          //featured companies container
          // from same screen components
          logbuildFeaturedCompanies(cardSelecterProvider),
          SizedBox(height: 9),

          //sponsored compaines container

          buildSponsoredContainer(),
          SizedBox(height: 9),
        ]),
      ),
    );
  }


}
