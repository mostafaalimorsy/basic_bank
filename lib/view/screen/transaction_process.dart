import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Transaction Tackplace"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/e1.jpg"),
                SizedBox(height: 40,),
                Text("You want to transfer From", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),),
                space(context),
                Text("personsel1.fullName", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.bold),),
                space(context),
                Text("To", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),textAlign: TextAlign.center,),
                space(context),
                Text("personsel2.fullName", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.bold),),
                space(context),
                defaultTextForm(
                  labelText: 'Balance',
                  hintText: "2000",
                  icon: Icons.account_balance,
                  type: TextInputType.number,
                ),
                space(context),
                operationButton(context: context, buttonText: 'Save',onpressed: (){
                })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
