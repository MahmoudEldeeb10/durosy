import 'package:durosy/core/constants/app_colors.dart';
import 'package:durosy/core/constants/styles.dart';
import 'package:durosy/core/widgets/custom_button.dart';
import 'package:durosy/features/auth/presentation/view/signup_view.dart';
import 'package:durosy/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SigninView extends StatefulWidget {
  const SigninView({super.key});

  @override
  State<SigninView> createState() => _SigninViewState();
}

class _SigninViewState extends State<SigninView> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    {
      return Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 28,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Text(
                            'تسجيل الدخول',
                            style: AppStyles.textStyle20.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Center(
                          child: Text(
                            'مرحباً بعودتك!',
                            style: AppStyles.textStyle18.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(height: 28),

                        Text(
                          'البـــريـــد الإلكـــتــروني',
                          style: AppStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CustomTextField(
                          controller: _emailController,
                          hint: 'eg. johnfrans@gmail.com',
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),

                        Text(
                          'الـــبـــاســـورد',
                          style: AppStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        CustomTextField(
                          controller: _passwordController,
                          hint: '••••••••••••••',
                          isPassword: true,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'يجب أن يتكون الباسورد من 8 أحرف على الأقل.',
                          style: AppStyles.textStyle14,
                        ),
                        const SizedBox(height: 28),

                        /// Login Button
                        CustomButton(
                          text: 'تـــســـجـــيـــل الـــدخـــول',
                          onpressed: () {},
                          color: AppColors.primary,
                          textColor: AppColors.background,
                        ),

                        const SizedBox(height: 24),

                        Row(
                          children: [
                            Text(
                              'لـــيـــس لـــديـــك حـــســـاب؟',
                              style: AppStyles.textStyle18.copyWith(
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => const SignupView(),
                                  ),
                                );
                              },
                              child: Text(
                                'إنـــشـــاء حـــســـاب',
                                style: AppStyles.textStyle18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}

// import 'package:durosy/features/auth/presentation/view/widgets/custom_text_field.dart';
// import 'package:flutter/material.dart';

// class SigninView extends StatefulWidget {
//   const SigninView({super.key});

//   @override
//   State<SigninView> createState() => _SigninViewState();
// }

// class _SigninViewState extends State<SigninView> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomTextField(
//             controller: _emailController,
//             hint: 'البريد الالكنروني',
//           ),
//           SizedBox(height: 16),
//           CustomTextField(controller: _passwordController, hint: 'كلمة السر'),
//         ],
//       ),
//     );
//   }
// }
