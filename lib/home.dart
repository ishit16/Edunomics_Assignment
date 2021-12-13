import 'package:edunomics_app/main.dart';
import 'package:edunomics_app/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;
import 'change_theme_button.dart';

class home extends StatelessWidget {

  Widget BuildCard() {
    return Transform.rotate(
      angle: -math.pi / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          color: Colors.blue,
          height: 70,
          width: 70,
        ),
      ),
    );
  }

  Widget BuildRowThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildCard(),
        SizedBox(width: 30,),
        BuildCard(),
        SizedBox(width: 30,),
        BuildCard(),
      ],
    );
  }

  Widget BuildRowTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        BuildCard(),
        SizedBox(width: 30,),
        BuildCard(),
      ],
    );
  }

  // @override
  // Widget build(BuildContext context) => Scaffold(
  //       appBar: AppBar(
  //         iconTheme: Theme.of(context).iconTheme,
  //         backgroundColor: Colors.transparent,
  //         leading: Icon(Icons.menu),
  //         title: Text(MyApp.title),
  //         elevation: 0,
  //         actions: [
  //           ChangeThemeButtonWidget(),
  //         ],
  //       ),
  //       body: ProfileWidget(),
  //       extendBody: true,
  //       bottomNavigationBar: NavigationBarWidget(),
  //     );

  @override
  Widget build(BuildContext context) {
    final text = Provider.of<ThemeProvider>(context).themeMode == ThemeMode.dark
        ? 'DarkTheme'
        : 'LightTheme';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Center(child: Text(MyApp.title)),
        actions: [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: MediaQuery.of(context).size.width, height: 30),
              ...List.generate(9,(index){
              return Column(
                children: [
                  BuildRowThree(),
                  BuildRowTwo(),
                ],
              );
              }),
              SizedBox(width: MediaQuery.of(context).size.width, height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
