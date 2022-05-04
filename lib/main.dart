import 'package:basic_bank/controller/cubit/cubit.dart';
import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocOverrides.runZoned(() {
    runApp(const MyApp());
  },
      blocObserver: MyBlocObserver()
  );

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit()..CreateDataBase(),
      child: BlocConsumer<AppCubit,TransfareAppStates>(
        listener: (BuildContext context, TransfareAppStates state) {  },
        builder: (BuildContext context, TransfareAppStates state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Transaction App',
            theme: ThemeData(
                primarySwatch: Colors.blue,
                fontFamily:"general"
            ),
            home:SplashScreen(),
          );
        },
      ),
    );
  }
}
