import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

Widget barData({VoidCallback? onTap}) =>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Card(
    color: defaultColor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)
    ),
    child: ListTile(
      leading: IconButton(
        alignment: Alignment.center,
        icon: Icon(Icons.person_pin,size: 40,),
        onPressed: (){},
      ),
      title: Row(
        children: [
          Text("Full Name"),
        ],
      ),
      subtitle: Row(
        children: [
          Text("Balance"),
          Text("1000000000.00"),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: onTap,
      ),
    ),
  ),
);