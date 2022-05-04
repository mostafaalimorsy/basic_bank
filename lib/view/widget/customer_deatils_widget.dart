import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/utalites/constant.dart';
import 'package:flutter/material.dart';

Widget CustomerDeatils (Map model , context) => Center(
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: defaultColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)
      ),
      child: Container(
        height: 550,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/2.png",height: 300,),
              space(context),
              //name
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Name: ",style: TextStyle(fontSize: 22),),
                  Text("${model['fullName']} ",style: TextStyle(fontSize: 22),),
                ],
              ),
              //mobile
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Mobile: ",style: TextStyle(fontSize: 22),),
                  Text("${model['mobile']}",style: TextStyle(fontSize: 22),),
                ],
              ),
              //email
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Email: ",style: TextStyle(fontSize: 22),),
                  Text("${model['email']}",style: TextStyle(fontSize: 22),),
                ],
              ),
              //account number
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Account Number: ",style: TextStyle(fontSize: 22),),
                  Text('${model['accountNum']}',style: TextStyle(fontSize: 22),),
                ],
              ),
              // ifsc code
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("IFSC Code: ",style: TextStyle(fontSize: 22),),
                  Text("${model['icode']}",style: TextStyle(fontSize: 22),),
                ],
              ),
              //current balance
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Current Balance: ",style: TextStyle(fontSize: 22),),
                  Text("${model['balance']} ",style: TextStyle(fontSize: 22),),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  ),
);