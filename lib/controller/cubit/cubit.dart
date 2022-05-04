import 'package:basic_bank/controller/cubit/states.dart';
import 'package:basic_bank/model/artical.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

class AppCubit extends Cubit <TransfareAppStates>
{
  AppCubit() : super(IntialTransfareAppStates());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 1;
  int indextranformFrom=1;
  int indextranformTo=1;
  var database;
  List<Map> bankList = [];
  // open the database
  void CreateDataBase() {
    // open the database
    database =
        openDatabase("Bank.db", version: 1, onCreate: (database, version) {
          print("it is Create");
          database.execute(
              'CREATE TABLE Bank (id INTEGER PRIMARY KEY, fullName TEXT, mobile TEXT, email TEXT,accountNum TEXT , icode TEXT , balance INTEGER)');
        }, onOpen: (database) {
          print("it is open");
        }).then((value) {
          print(value);
          database = value;
          emit(AppCreateDataBaseState());
          print("emit is done");
          getDataFromDB(database);

        });
  }



  // Insert some records in a transaction
  Future InsertToDataBase(
      {required String fullName, required String mobile, required String email, required String accountNum , required String iCode , required int balance }) async {
    emit(AppInsertErrorDataBaseState());
    await database.transaction((txn) async {
      int id1 = await txn.rawInsert(
          'INSERT INTO Bank(fullName, mobile, email,accountNum, icode , balance) VALUES("$fullName", "$mobile", "$email","$accountNum" ,"$iCode" , "$balance")');
      print('inserted1: $id1');
      // bankInfo = BankInfo(
      //   fullName: fullName,
      //   mobile: mobile,
      //   email: email,
      //   accountNum: accountNum,
      //   ifsc: iCode,
      //   balance: balance
      // ) as List<Map>;
      emit(AppInsertDataBaseState());
      getDataFromDB(database);
      print("inserted");




    });

  }

  // get data from database
  Future getDataFromDB(database)
  async {
    bankList = await database.rawQuery('SELECT * FROM Bank');
    print ("it is working");
    emit(AppGetDataBaseState());
    print(bankList);


  }

//to update data in database
  void updateData  ({
    required int balance, required int id,}

      )
  async {
    // Update some record
    database.rawUpdate(
        'UPDATE Bank SET balance = ? WHERE id = ?',
        ['$balance', id]);

    emit(AppUpdateDataBaseState());
    emit(AppGetDataBaseState());

    getDataFromDB(database);
  }


}




// To watch states


class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}