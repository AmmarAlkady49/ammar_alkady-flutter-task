import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  PlansCubit() : super(PlansInitial());

  String selectedPlan = '1';

  void selectPlan(String planId) {
    if (selectedPlan != planId) {
      log(planId);
      selectedPlan = planId;
      emit(PlanSelected());
    }
  }

  bool isSelected(String planId) {
    return selectedPlan == planId;
  }
}
