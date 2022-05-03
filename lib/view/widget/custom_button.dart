import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

Widget customButton ({GestureTapCallback? onTap, required String titleButton , required IconData icon})=> Card(
  child:InkWell(
    onTap: onTap,
    child: Container(
      width: 170,
      decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
          offset: Offset(0.0, 20.0),
          blurRadius: 30.0,
          color: Colors.black12,
        )
      ],
          color: Colors.white, borderRadius: BorderRadius.circular(22.0)
      ),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50.0,
              width: 130.0,
              padding: const EdgeInsets.symmetric(vertical: 13.0, horizontal: 12.0),
              decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft:  Radius.circular(22.0),
                      topLeft:  Radius.circular(22.0),
                      bottomRight: Radius.circular(200.0)
                  )
              ),
              child:  Text("$titleButton",),
            ),
             Center(
              child: Icon(
                icon,
                size: 30.0,
              ),
            )
          ]
      ),
    ),
  ),
);