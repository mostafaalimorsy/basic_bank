import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBar({String? title})=> AppBar(
  centerTitle: true,
  title: Text("$title",style: TextStyle(color: Colors.black ),),
  backgroundColor: defaultColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
);