import 'package:flutter/material.dart';
Row googleOrWhatsappButton() {
    return Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  minWidth: 110,
                  height: 40,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(width: 20, height: 20, decoration:BoxDecoration(image:DecorationImage(fit:BoxFit.cover,image:AssetImage('assets/images/google.png'),),),),
                      SizedBox(width: 4),
                      Text('Goolge', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
                
                 MaterialButton(
                  minWidth: 110,
                  height: 40,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      Container(width: 20, height: 20, decoration:BoxDecoration(image:DecorationImage(fit:BoxFit.cover,image:AssetImage('assets/images/whatsapp.png'),),),),
                      SizedBox(width: 4),


                      Text('WhatsApp', style: TextStyle(color: Colors.blue)),
                    ],
                  ),
                ),
              ],
            );
  }