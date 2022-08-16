// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:naukri/helper/build_container_top_button.dart';
import 'package:naukri/utilities/dummy.dart';

Container buildSponsoredContainer() {
  return Container(
    padding: EdgeInsets.all(20),
    width: double.infinity,
    color: Colors.white,
    height: 300,
    child: Column(
      children: [
        buid_Container_top_button(
            titleText: 'Sponsored companies',
            buttonText: 'View all',
            ontap: () {}),
        Container(
          width: double.infinity,
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index) {
              return Container(
                width: 170,
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 140,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.contain,

                          // image

                          image: AssetImage(
                            Dummy_Data.image[index],
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 10),

                        // company title and arrow

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(Dummy_Data.jobsname[index],
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward_ios_outlined)
                          ],
                        ),
                        SizedBox(height: 10),
// rating and review
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            SizedBox(
                              width: 4,
                            ),

                            // companny review and rating

                            Text(Dummy_Data.rating[index],
                                style: TextStyle(fontWeight: FontWeight.bold)),

                            // divider
                            SizedBox(
                              height: 10,
                              child: VerticalDivider(
                                  thickness: 1.4,
                                  width: 12,
                                  color: Colors.grey),
                            ),
                            // review
                            Text(Dummy_Data.review[index]),
                          ],
                        ),

                        // status and others

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildCard(
                              text: Dummy_Data.status[index],
                            ),
                            buildCard(
                              text: Dummy_Data.others[index],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}

Card buildCard({required text}) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(4.0),
      child: Text(text, style: TextStyle(fontSize: 10)),
    ),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.blueGrey),
      borderRadius: BorderRadius.circular(
        8,
      ),
    ),
  );
}
