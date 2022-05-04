import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/custom_textformfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Widget transactionProccess(Map model1, Map model2 , context) {
  var inputBalanceValue = TextEditingController();


  return BlocConsumer<AppCubit , TransfareAppStates>(

    listener: (BuildContext context, state) {  },
    builder: (BuildContext context, TransfareAppStates state) {
      AppCubit getData = AppCubit.get(context);
      return  SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/e1.jpg"),
                SizedBox(height: 40,),
                Text("You want to transfer From", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),),
                space(context),
                Text("${model1["fullName"]}", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.bold),),
                space(context),
                Text("To", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20),textAlign: TextAlign.center,),
                space(context),
                Text("${model2["fullName"]}", style: TextStyle(fontStyle: FontStyle.normal, fontSize: 20, fontWeight: FontWeight.bold),),
                space(context),
                defaultTextForm(
                  controller: inputBalanceValue,
                  labelText: 'Balance',
                  hintText: "2000",
                  icon: Icons.account_balance,
                  type: TextInputType.number,
                ),
                space(context),
                operationButton(context: context, buttonText: 'Save',onpressed: (){
                  int totalBalanceFrist = model1['balance'] ;
                  int totalBalanceSecond = model2['balance'] ;
                  int valueOfTranaction = int.parse(inputBalanceValue.text);

                  print(totalBalanceFrist);
                  print(totalBalanceSecond);
                  print(valueOfTranaction);

                  int sum = valueOfTranaction + totalBalanceSecond;
                  totalBalanceSecond = sum;
                  int multi= totalBalanceFrist - valueOfTranaction;
                  totalBalanceFrist =  multi;
                  print('after first');
                  print(multi);
                  print(totalBalanceFrist);
                  print('after second');
                  print(sum);
                  print(totalBalanceSecond);
                  getData.updateData(balance: totalBalanceFrist, id: model1['id']);
                  getData.updateData(balance: totalBalanceSecond, id: model2['id']);




                })
              ],
            ),
          ),
        ),
      );
    },
  );
}