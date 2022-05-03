import 'package:basic_bank/view/screen/Customer_deatils_Screen.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_bar_data.dart';
import 'package:flutter/material.dart';

class BalanceCHeckScreen extends StatelessWidget {
  const BalanceCHeckScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Balance Check"),
      body: barData(onTap: (){
        navigatTo(context, DeatilsScreen());
      }),
    );
  }
}
