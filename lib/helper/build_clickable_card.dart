import 'package:flutter/material.dart';
import 'package:naukri/provider/card_selector.dart';
 GestureDetector logbuildCard(CardSelecterProvider cardSelecterProvider,
      {required String text, required ontap, required value}) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
        //using provider to change color of card
        color: Colors.orange.withOpacity(value),
        shape: RoundedRectangleBorder(
           side: BorderSide(color:Colors.orange.withOpacity(value),width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Text(text),
        ),
      ),
    );
  }