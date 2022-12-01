import 'package:flutter/material.dart';
import 'package:travel_app/cubit/app_cubit_logics.dart';
import 'package:travel_app/cubit/app_cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/services/data_services.dart';

void main() => runApp(const TravelAPP());

class TravelAPP extends StatelessWidget {
  const TravelAPP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: BlocProvider<AppCubits>(
        create: (context) => AppCubits(
          data: DataServices(),
        ),
        child: const AppCubitLogics(),
      ),
    );
  }
}
