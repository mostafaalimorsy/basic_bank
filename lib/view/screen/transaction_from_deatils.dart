import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/screen/transfare_to_balance_screen.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/utalites/constant.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_operation_button.dart';
import 'package:basic_bank/view/widget/transaction_from_deatils_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionFromDeatils extends StatelessWidget {
  const TransactionFromDeatils({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit , TransfareAppStates> (
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, TransfareAppStates state) {
        AppCubit getData = AppCubit.get(context);
        return Scaffold(
          appBar: appBar(title: 'Account Deatils'),
          body: transformDeatilsFrom(getData.bankList[getData.indextranformFrom],context),
        );
      },
    );
  }
}
