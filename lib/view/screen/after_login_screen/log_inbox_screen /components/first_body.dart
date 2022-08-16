import 'package:flutter/material.dart';

  Column firstBody() {
    return Column(
            children: [
          // image

              Container(
                height: 210,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image: AssetImage('assets/images/message.png'),
                  ),
                ),
              ),
                  //message
          Text(
            " Haven't  heard from recruiters ? ",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10),

          SizedBox(
              width: 256,
              child: Text(
                " Keep your profile up-to-date  to help recruiters reach you for revelent job opeings",
                style: TextStyle(fontSize: 12, color: Colors.grey),
                maxLines: 2,
                textAlign: TextAlign.center,
              )),
          SizedBox(height: 10),
//complete profile
          MaterialButton(
            onPressed: () {},
            child: Text(
              " Complete profile now",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            color: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
            ],
          );
  }