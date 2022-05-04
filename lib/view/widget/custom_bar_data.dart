import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

Widget barData( Map model , context) =>Padding(
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
          Text("${model['fullName']}"),
        ],
      ),
      subtitle: Row(
        children: [
          Text("Balance : "),
          Text("${model['balance']}"),
        ],
      ),
      trailing: IconButton(
        icon: Icon(Icons.arrow_forward_ios),
        onPressed: (){},
      ),
    ),
  ),
);