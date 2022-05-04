import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/model/artical.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNewUserScreen extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController accountNumberController = TextEditingController();
  TextEditingController iCodeController = TextEditingController();
  TextEditingController balanceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, TransfareAppStates>(
      listener: (BuildContext context, state) {
        if (state is AppInsertDataBaseState) {
          msgAlarm(
              msg: "Add New User IS Done",
              states: ToastStates.SUCCESS,
              textColor: Colors.black);
        }
      },
      builder: (BuildContext context, TransfareAppStates state) {
        AppCubit getData = AppCubit.get(context);
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
                      controller: nameController,
                      labelText: 'Full Name',
                      hintText: 'Mostafa Ali',
                      icon: Icons.person,
                      type: TextInputType.name,
                      msg: 'please enter the name',
                    ),

                    space(context),
                    //phone number
                    defaultTextForm(
                      controller: mobileController,
                      labelText: 'Mobile Number',
                      hintText: '010*******',
                      icon: Icons.phone,
                      type: TextInputType.phone,
                      msg: 'please enter the phone number',
                    ),
                    space(context),
                    //email
                    defaultTextForm(
                      controller: emailController,
                      labelText: 'E-Mail',
                      hintText: '****@gmail.com',
                      icon: Icons.mail_outlined,
                      type: TextInputType.emailAddress,
                      msg: 'please enter the E-mail',
                    ),
                    space(context),
                    //Account Number
                    defaultTextForm(
                      controller: accountNumberController,
                      labelText: 'Account Number',
                      hintText: '1000*****1827',
                      icon: Icons.account_balance,
                      type: TextInputType.number,
                      msg: 'please enter the Account Number',
                    ),
                    space(context),
                    //IFSC Code
                    defaultTextForm(
                      controller: iCodeController,
                      labelText: 'IFSC Code',
                      hintText: '518',
                      icon: Icons.password_outlined,
                      type: TextInputType.number,
                      msg: 'please enter the IFSC Code',
                    ),
                    space(context),
                    //Current Balance
                    defaultTextForm(
                      controller: balanceController,
                      labelText: 'Current Balance',
                      hintText: '1000000.00',
                      icon: Icons.balance_rounded,
                      type: TextInputType.number,
                      msg: 'please enter the Balance',
                    ),
                    space(context),
                    //Save button
                    operationButton(
                        buttonText: 'Save',
                        context: context,
                        onpressed: ()  {
                          getData.InsertToDataBase(
                              fullName : nameController.text.toString(),
                              email: emailController.text.toString(),
                              mobile: mobileController.text.toString(),
                              accountNum: accountNumberController.text.toString(),
                              iCode: iCodeController.text.toString(),
                              balance: int.parse(balanceController.text));
                          Navigator.pop(context);
                          print("save cliced");
                        }),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
