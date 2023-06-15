import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratchapp/features/homescreen/bolc/cubit/scratch_cubit.dart';
import 'package:scratchapp/features/homescreen/presentaion/homescreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ScratchCubit(),
      child: const MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
