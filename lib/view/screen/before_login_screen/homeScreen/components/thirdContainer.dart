// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:naukri/utilities/dummy.dart';

Container buildThirdContainer() {
  return Container(
    height: 300,
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          // row of text ( top companies   and view all )
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top companies ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              TextButton(
                child: Text(
                  'View all',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                onPressed: () {},
              )
            ],
          ),

          Container(
            height: 220,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              primary: true,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(118, 217, 252, 244)),
                  child: Container(
                      height: 190,
                      width: 170,
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

                          // company title

                          Text(Dummy_Data.jobsname[index],
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              SizedBox(
                                width: 4,
                              ),

                              // companny review

                              Text(Dummy_Data.rating[index],
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(
                                width: 6,
                              ),
                              Text(Dummy_Data.review[index]),
                            ],
                          ),
                          SizedBox(height: 10),

                          // company status

                          Card(
                            color: Color.fromARGB(207, 255, 153, 0),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 3),
                              child: Text(
                                Dummy_Data.status[index],
                                style: TextStyle(color: Colors.deepOrange),
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Center(
                            child: Text(
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
          ),
        ],
      ),
    ),
  );
}
