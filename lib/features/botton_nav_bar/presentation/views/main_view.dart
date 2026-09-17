import 'package:durosy/core/constants/app_colors.dart';
import 'package:durosy/features/botton_nav_bar/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'package:durosy/features/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainView extends StatelessWidget {
  MainView({super.key});

  final List pages = [HomeView(), HomeView()];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.background,
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 250),
            transitionBuilder: (child, animation) {
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: Tween<Offset>(
                    begin: const Offset(0, 0.02),
                    end: Offset.zero,
                  ).animate(animation),
                  child: child,
                ),
              );
            },
            child: KeyedSubtree(
              key: ValueKey(state.currentIndex),
              child: pages[state.currentIndex],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            currentIndex: state.currentIndex,
            onTap: context.read<BottomNavCubit>().changeTab,

            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,

            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.textMuted,

            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'الرئيسية',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.book_rounded),
                label: 'الكورسات',
              ),
            ],
          ),
        );
      },
    );
  }
}
