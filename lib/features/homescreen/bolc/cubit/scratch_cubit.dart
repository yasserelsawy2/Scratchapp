import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:scratchapp/features/homescreen/presentaion/widgets/formfield.dart';

part 'scratch_state.dart';

class ScratchCubit extends Cubit<ScratchState> {
  ScratchCubit() : super(ScratchInitial());
  List<Widget> widgets = [];

  addWidget() {
    widgets.add(const MyTextField());
    emit(Addformfield());
  }
}
