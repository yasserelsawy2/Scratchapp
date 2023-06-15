import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratchapp/features/homescreen/bolc/cubit/scratch_cubit.dart';
import 'package:scratchapp/features/homescreen/presentaion/widgets/widgets_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ScratchCubit, ScratchState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Add widgets'),
          ),
          body: Column(
            children: [
              const Expanded(
                child: WidgetsListView(),
              ),
              ElevatedButton(
                onPressed: () {
                  BlocProvider.of<ScratchCubit>(context).addWidget();
                },
                child: const Text('Add Textfield'),
              ),
            ],
          ),
        );
      },
    );
  }
}
