// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:naukri/utilities/dummy.dart';

class ViewBuilderContainer extends StatelessWidget {
  ViewBuilderContainer({
    Key? key,
    required this.circularBorder,
    required this.card_text,
    required this.mcheight,
    required this.cwidth,
  }) : super(key: key);
  bool? circularBorder;
  bool? card_text;
  double? mcheight;
  double? cwidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: mcheight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: true,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: Dummy_Data.image.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
               border: Border.all(color: Colors.grey.withOpacity(0.2))
            ),
            child: Container(
                height: 220,
                width: cwidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      width: 130,
                      height: 90,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.contain,

                          // image

                          image: AssetImage(
                            Dummy_Data.image[index],
                          ),
                        ),
                      ),
                    ),
// both big and small container first big container
                    circularBorder == true
                        ? Container(
                            width: double.infinity,
                            margin: EdgeInsets.symmetric(horizontal: 20),
                            height: 90,
                            decoration: BoxDecoration(
                              color: Dummy_Data.colors[index].withOpacity(0.05),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // company title

                                Text(Dummy_Data.jobsname[index],
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.star, color: Colors.yellow),
                                    SizedBox(
                                      width: 4,
                                    ),

                                    // companny review and rating

                                    Text(Dummy_Data.rating[index],
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      height: 10,
                                      child: VerticalDivider(
                                          thickness: 1.4,
                                          width: 12,
                                          color: Colors.grey),
                                    ),
                                    Text(Dummy_Data.review[index]),
                                  ],
                                ),
                              ],
                            ),
                          )
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // company title

                              Text(Dummy_Data.jobsname[index],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  SizedBox(
                                    width: 4,
                                  ),

                                  // companny review and rating

                                  Text(Dummy_Data.rating[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  SizedBox(
                                    height: 10,
                                    child: VerticalDivider(
                                        thickness: 1.4,
                                        width: 12,
                                        color: Colors.grey),
                                  ),
                                  Text(Dummy_Data.review[index]),
                                ],
                              ),
                            ],
                          ),

                    SizedBox(height: 10),

                    // company status with card or text
                    card_text == true
                        ? Card(
                            color: Color.fromARGB(207, 255, 153, 0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 3),
                              child: Text(
                                Dummy_Data.status[index],
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ),
                          )
                        : SizedBox(
                            width: 160,
                            child: Text(
                              Dummy_Data.textstatus[index],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey, letterSpacing: 1.7),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                    SizedBox(height: 15),

                    //view jobs

                    Center(
                      child: circularBorder == true
                          ? Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Text(
                                "View jobs",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold),
                              ),
                            )
                          : Text(
                              "View jobs",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                    ),
                  ],
                )),
          );
        },
      ),
    );
  }
}
