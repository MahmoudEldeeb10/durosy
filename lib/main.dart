import 'package:durosy/core/constants/app_colors.dart';
import 'package:durosy/features/botton_nav_bar/presentation/manager/cubit/bottom_nav_cubit.dart';
import 'package:durosy/features/botton_nav_bar/presentation/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const Durosy());
}

class Durosy extends StatelessWidget {
  const Durosy({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BottomNavCubit(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.background,
          colorScheme: ColorScheme.light(
            primary: AppColors.primary,
            secondary: AppColors.secondary,
            surface: AppColors.card,
            onPrimary: Colors.white,
            onSurface: AppColors.textPrimary,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.background,
            foregroundColor: AppColors.textPrimary,
            elevation: 0,
          ),
        ),
        locale: const Locale('ar'),

        supportedLocales: const [Locale('ar')],

        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        builder: (context, child) {
          return Directionality(
            textDirection: TextDirection.rtl,
            child: child!,
          );
        },

        debugShowCheckedModeBanner: false,
        home: MainView(),
      ),
    );
  }
}
