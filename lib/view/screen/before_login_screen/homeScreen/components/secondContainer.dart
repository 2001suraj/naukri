import 'package:flutter/material.dart';
  Container buildSecondContainer(BuildContext context) {
    return Container(
              height: 420,
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                        Image(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 200,
                          image: AssetImage('assets/images/search.png'),
                        ),
                        Text('Find your dream job',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter skills, designations, companies',
                        ),
                      ),
                    ),
                  ),
                               Padding(
                    padding: const EdgeInsets.symmetric(horizontal:20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Enter location',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                   MaterialButton(
                    minWidth: 110,
                    height: 40,
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    onPressed: () {},
                    child: Text('Search  jobs ',
                        style: TextStyle(color: Colors.white)),
                  ),
                ],
              ));
  }