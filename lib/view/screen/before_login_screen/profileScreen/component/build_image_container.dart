import 'package:flutter/material.dart';
import 'package:naukri/utilities/dummy.dart';

 Container buildImageContainer() {
    return Container(
                height: 60,
                width: double.infinity,
                margin: EdgeInsets.only(left: 20),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Dummy_Data.image.length,
                  itemBuilder: (context, index) {
                    return Container(
                       color:  Colors.transparent,
                        
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                           border: Border.all(color:  Colors.black),
                            shape: BoxShape.circle,
                      
                          image: DecorationImage(
                             fit:  BoxFit.contain,
                            image: AssetImage(
                              Dummy_Data.image[index],
                               
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
  }
