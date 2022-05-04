import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/custom_textformfield_widget.dart';
import 'package:basic_bank/view/widget/tranaction_proccess_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit , TransfareAppStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, TransfareAppStates state) {
        AppCubit getData = AppCubit.get(context);
        return  Scaffold(
          appBar: appBar(title: "Transaction Tackplace"),
          body: transactionProccess(getData.bankList[getData.indextranformFrom],getData.bankList[getData.indextranformTo],context),
        );
      },

    );
  }
}
