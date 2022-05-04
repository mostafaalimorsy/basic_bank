import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/utalites/constant.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/customer_deatils_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeatilsScreen extends StatelessWidget {
  const DeatilsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit , TransfareAppStates>(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, TransfareAppStates state) {
        AppCubit getData =AppCubit.get(context);
        return Scaffold(
          appBar: appBar(title: 'Account Deatils'),
          body: CustomerDeatils(getData.bankList[getData.currentIndex] , context),


         );
      },
    );
  }
}
