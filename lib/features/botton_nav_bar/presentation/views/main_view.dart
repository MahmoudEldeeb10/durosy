import 'package:durosy/features/attendance/presentation/view/attendance_view.dart';
import 'package:durosy/features/botton_nav_bar/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'package:durosy/features/home/presentation/view/home_view.dart';
import 'package:durosy/features/payments/presentation/view/payments_view.dart';
import 'package:durosy/features/reports/presentation/view/reports_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final List<Widget> pages = [
    const HomeView(),
    const AttendanceView(),
    const PaymentsView(),
    const ReportsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(index: state.currentIndex, children: pages),
          bottomNavigationBar: Container(
            child: NavigationBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              selectedIndex: state.currentIndex,
              onDestinationSelected: context.read<BottomNavCubit>().changeTab,
              indicatorColor: Colors.green.shade900,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.home_outlined),
                  selectedIcon: Icon(Icons.home_outlined, color: Colors.white),
                  label: 'الرئيسية',
                ),

                NavigationDestination(
                  icon: Icon(Icons.calendar_today_outlined),
                  selectedIcon: Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  label: 'الحضور',
                ),

                NavigationDestination(
                  icon: Icon(Icons.wallet_outlined),
                  selectedIcon: Icon(
                    Icons.wallet_outlined,
                    color: Colors.white,
                  ),
                  label: 'المدفوعات',
                ),

                NavigationDestination(
                  icon: Icon(Icons.book_outlined),
                  selectedIcon: Icon(Icons.book_outlined, color: Colors.white),
                  label: 'التقارير',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
