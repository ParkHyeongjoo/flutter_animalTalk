import 'package:flutter_bloc/flutter_bloc.dart';

class MainBloc extends Cubit<bool> {
  MainBloc(): super(false);

  Future<void> splashTimer(bool state) async {
    if(!state){
      await Future.delayed(const Duration(seconds: 1));
      print("3");
      await Future.delayed(const Duration(seconds: 1));
      print("2");
      await Future.delayed(const Duration(seconds: 1));
      print("1");
      await Future.delayed(const Duration(seconds: 1));
      emit(true);
    }
  }
}