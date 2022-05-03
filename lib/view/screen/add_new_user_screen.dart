import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';

class AddNewUserScreen extends StatelessWidget {
  const AddNewUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Add New User..."),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //full name
                defaultTextForm(
                    labelText: 'Full Name',
                    hintText: 'Mostafa Ali',
                    icon: Icons.person,
                    type: TextInputType.name,
                    msg: 'please enter the name',

                ),

                space(context),
                //phone number
                defaultTextForm(
                  labelText: 'Mobile Number',
                  hintText: '010*******',
                  icon: Icons.phone,
                  type: TextInputType.phone,
                  msg: 'please enter the phone number',

                ),
                space(context),
                //email
                defaultTextForm(
                  labelText: 'E-Mail',
                  hintText: '****@gmail.com',
                  icon: Icons.mail_outlined,
                  type: TextInputType.emailAddress,
                  msg: 'please enter the E-mail',

                ),
                space(context),
                //Account Number
                defaultTextForm(
                  labelText: 'Account Number',
                  hintText: '1000*****1827',
                  icon: Icons.account_balance,
                  type: TextInputType.number,
                  msg: 'please enter the Account Number',

                ),
                space(context),
                //IFSC Code
                defaultTextForm(
                  labelText: 'IFSC Code',
                  hintText: '518',
                  icon: Icons.password_outlined,
                  type: TextInputType.number,
                  msg: 'please enter the IFSC Code',

                ),
                space(context),
                //Current Balance
                defaultTextForm(
                  labelText: 'Current Balance',
                  hintText: '1000000.00',
                  icon: Icons.balance_rounded,
                  type: TextInputType.number,
                  msg: 'please enter the Balance',

                ),
                space(context),
                //Save button
                operationButton(buttonText: 'Save', context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
