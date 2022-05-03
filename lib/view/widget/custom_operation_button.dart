import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

Widget operationButton ({ required BuildContext context,  buttonText ,VoidCallback? onpressed })=>  Container(

    width: MediaQuery.of(context).size.height,
    color: defaultColor,
    child: TextButton(
      onPressed: onpressed,
      child: Text("$buttonText",style: const TextStyle(color: Colors.white),),
    ));