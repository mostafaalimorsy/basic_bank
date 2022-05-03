import 'package:basic_bank/view/screen/Customer_deatils_Screen.dart';
import 'package:basic_bank/view/screen/transaction_from_deatils.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/appbar_widget.dart';
import 'package:basic_bank/view/widget/custom_bar_data.dart';
import 'package:flutter/material.dart';

class TransfareBalanceScreen extends StatelessWidget {
  const TransfareBalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: "Transfer From"),
      body: barData(onTap: (){
        navigatTo(context, TransactionFromDeatils());
      }),
    );
  }
}
