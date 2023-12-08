import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app1/cubit/app_cubit_logics.dart';
import 'package:travel_app1/cubit/app_cubits.dart';
import 'package:travel_app1/views/detail_view.dart';
import 'package:travel_app1/views/nav_views/main_view.dart';
import 'package:travel_app1/views/welcom_view.dart';

void main() {
  runApp(const TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              elevation: 0,
              backgroundColor: Colors.white)),
      home: BlocProvider<AppCubits>(
        create: (context) {
          return AppCubits();
        },
        child: const AppCubtiLogics(),
      ),
    );
  }
}
