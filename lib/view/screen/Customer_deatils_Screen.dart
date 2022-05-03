import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/utalites/constant.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DeatilsScreen extends StatelessWidget {
  const DeatilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Account Deatils'),
      body: Center(
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
                        Text("Mostafa Morsy ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                    //mobile
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Mobile: ",style: TextStyle(fontSize: 22),),
                        Text("01200000000 ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                    //email
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Email: ",style: TextStyle(fontSize: 22),),
                        Text("test@gmail.com ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                    //account number
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Account Number: ",style: TextStyle(fontSize: 22),),
                        Text("100004551545 ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                    // ifsc code
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("IFSC Code: ",style: TextStyle(fontSize: 22),),
                        Text("217 ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                    //current balance
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Current Balance: ",style: TextStyle(fontSize: 22),),
                        Text("1.000.000.000 ",style: TextStyle(fontSize: 22),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
