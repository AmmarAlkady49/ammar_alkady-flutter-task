import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/services/app_database_helper.dart';

part 'plans_state.dart';

class PlansCubit extends Cubit<PlansState> {
  PlansCubit() : super(PlansInitial());

  String selectedPlan = '1';
  final dbHelper = AppDatabaseHelper.instance;

  Future<void> init() async {
    final savedPlan = await dbHelper.getSelectedPlan();
    if (savedPlan != null) {
      selectedPlan = savedPlan;
      emit(PlanSelected());
    }
  }

  Future<void> selectPlan(String planId) async {
    if (selectedPlan != planId) {
      selectedPlan = planId;
      await dbHelper.saveSelectedPlan(planId);
      log('Saved selected plan: $planId');
      emit(PlanSelected());
    }
  }

  bool isSelected(String planId) {
    return selectedPlan == planId;
  }
}
