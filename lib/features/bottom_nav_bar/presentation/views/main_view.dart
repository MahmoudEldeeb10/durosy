import 'package:durosy/features/bottom_nav_bar/presentation/manager/cubit/bottom_nav_cubit.dart';
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
          backgroundColor: Colors.white,

          body: Stack(
            children: [
              pages[state.currentIndex],

              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: BottomNavigationBar(
                      backgroundColor: Colors.white,
                      currentIndex: state.currentIndex,
                      onTap: context.read<BottomNavCubit>().changeTab,

                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      type: BottomNavigationBarType.fixed,

                      selectedItemColor: Color(0xFF1A1A1A),
                      unselectedItemColor: Color(0xFF6C6C6C),

                      items: const [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person_outline),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.post_add_outlined),
                          label: '',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
