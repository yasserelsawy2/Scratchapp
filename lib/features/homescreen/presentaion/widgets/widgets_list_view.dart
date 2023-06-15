import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scratchapp/features/homescreen/bolc/cubit/scratch_cubit.dart';

class WidgetsListView extends StatelessWidget {
  const WidgetsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: BlocProvider.of<ScratchCubit>(context).widgets.length,
      itemBuilder: (BuildContext context, int index) {
        return BlocProvider.of<ScratchCubit>(context).widgets[index];
      },
    );
  }
}
