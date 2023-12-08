import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app1/cubit/app_cubit_states.dart';
import 'package:travel_app1/cubit/app_cubits.dart';
import 'package:travel_app1/views/welcom_view.dart';

class AppCubtiLogics extends StatefulWidget {
  const AppCubtiLogics({super.key});

  @override
  State<AppCubtiLogics> createState() => _AppCubtiLogicsState();
}

class _AppCubtiLogicsState extends State<AppCubtiLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(builder: (context, state) {
        if (state is WelcomeState) {
          return const WelcomView();
        } else {
          return Container();
        }
      }),
    );
  }
}
