import 'package:animal_talk/bloc/main_bloc.dart';
import 'package:animal_talk/res/colors.dart';
import 'package:animal_talk/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: mainColor
      ),
      home: BlocProvider<MainBloc>(
        create: (BuildContext context) => MainBloc(),
        child: const _ScreenBody(),
      ),
    )
  );
}

class _ScreenBody extends StatelessWidget {
  const _ScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, bool>(
      builder: (context, state) {
        if(!state){
          context.read<MainBloc>().splashTimer(state);
          return Scaffold(
            body: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/splash_image.png",
                    fit: BoxFit.fitHeight,
                  ),
                  const CircularProgressIndicator()
                ]
            ),
          );
        }else{
          return LoginScreen();
        }
      },
    );
  }

}
