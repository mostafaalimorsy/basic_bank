import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/screen/Customer_deatils_Screen.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_bar_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BalanceCHeckScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer <AppCubit , TransfareAppStates >(
      listener: (BuildContext context, state) {  },
      builder: (BuildContext context, TransfareAppStates state) {
        AppCubit getData= AppCubit.get(context);
        return Scaffold(
          appBar: appBar(title: "Balance Check"),
          body: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: getData.bankList.length,
            itemBuilder: (BuildContext context, int index) {
              return  InkWell(
                onTap: (){
                  navigatTo(context, DeatilsScreen());
                  print("index of bar:");
                  getData.currentIndex = index;
                },
                  child: barData(getData.bankList[index],context));
            },


          ),
        );
      },
    );
  }
}
