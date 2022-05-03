import 'package:basic_bank/view/screen/add_new_user_screen.dart';
import 'package:basic_bank/view/screen/balance_check_screen.dart';
import 'package:basic_bank/view/screen/transfare_balance_screen.dart';
import 'package:basic_bank/view/utalites/componans.dart';
import 'package:basic_bank/view/widget/custom_button.dart';
import 'package:flutter/material.dart';

Widget choose (context)=>Padding(
  padding: const EdgeInsets.all(8.0),
  child: Center(
    child: Column(
      children: [
        Image.asset('assets/o1.jpg',),
        const SizedBox(height: 40,),
        Text("Welcome to our online banking system",
          style: Theme.of(context).textTheme.headline5?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20,),
        const Text("This app is used only transfer of money between multiple customers and check balance.",
          textAlign: TextAlign.center,),
        const SizedBox(height: 20,),
        customButton(titleButton: 'Add Customers', icon: Icons.add_box,onTap: (){
          navigatTo(context, AddNewUserScreen());
        }),
        const SizedBox(height: 20,),
        customButton(titleButton: 'Balance Check', icon: Icons.account_balance_outlined,onTap: (){
          navigatTo(context, BalanceCHeckScreen());
        }),
        const SizedBox(height: 20,),
        customButton(titleButton: 'Transfer Balance', icon: Icons.change_circle,onTap: (){
          navigatTo(context, TransfareBalanceScreen());
        }),
      ],
    ),
  ),
);