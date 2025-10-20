import 'package:ammar_alkady_flutter_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:ammar_alkady_flutter_task/features/home/presentation/pages/offers_page.dart';
import 'package:ammar_alkady_flutter_task/features/profile/presentation/bloc/cubit/plans_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/shared/widgets/bottom_navigation.dart';
import 'profile/presentation/pages/plans_page.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    BlocProvider(
      create: (context) => HomeCubit()
        ..emitHomeProducts()
        ..emitHomeCategories(),
      child: const OffersPage(),
    ),
    const OffersPage(),
    const OffersPage(),
    const OffersPage(),
    BlocProvider(
      create: (context) => PlansCubit()..init(),
      child: const PlansPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigation(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
