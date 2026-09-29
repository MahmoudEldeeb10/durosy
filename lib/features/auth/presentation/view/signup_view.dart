import 'package:durosy/core/constants/app_colors.dart';
import 'package:durosy/core/constants/styles.dart';
import 'package:durosy/core/widgets/custom_button.dart';
import 'package:durosy/features/auth/presentation/view/signin_view.dart';
import 'package:durosy/features/auth/presentation/view/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class SignupView extends StatefulWidget {
  const SignupView({super.key});

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _fullNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  int _accountType = 0; // 0 = جمعية خيرية, 1 = مؤسسة إنتاجية

  @override
  void dispose() {
    _fullNameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                          'إنـــشـــاء حـــســـاب جـــديـــد',
                          style: AppStyles.textStyle20.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Center(
                        child: Text(
                          'ابدأ رحـــلــتك الأن',
                          style: AppStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      /// Name + Username
                      Row(
                        textDirection: TextDirection.rtl,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'الاسم الكامل',
                                  style: AppStyles.textStyle18.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                CustomTextField(
                                  controller: _fullNameController,
                                  hint: 'واتسون فيسك',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'اسم المستخدم',
                                  style: AppStyles.textStyle18.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                CustomTextField(
                                  controller: _usernameController,
                                  hint: 'فيسك011',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 18),

                      /// Email
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
                      const SizedBox(height: 18),

                      /// Password
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
                      const SizedBox(height: 18),

                      /// Confirm Password
                      Text(
                        'تأكيد الـــبـــاســـورد',
                        style: AppStyles.textStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      CustomTextField(
                        controller: _confirmPasswordController,
                        hint: '••••••••••••••',
                        isPassword: true,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'يجب أن يكون الباسورد من 8 أحرف على الأقل',
                        style: AppStyles.textStyle14,
                      ),
                      const SizedBox(height: 18),

                      /// Account Type
                      Text(
                        'التسجيل كـ',
                        style: AppStyles.textStyle18.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      _AccountTypeRow(
                        label: 'مدرس',
                        value: _accountType == 0,
                        onChanged: (_) => setState(() => _accountType = 0),
                      ),
                      const SizedBox(height: 6),
                      _AccountTypeRow(
                        label: 'طالب',
                        value: _accountType == 1,
                        onChanged: (_) => setState(() => _accountType = 1),
                      ),
                      const SizedBox(height: 24),

                      CustomButton(
                        text: 'إنــــشــــاء حـــســــاب',
                        onpressed: () {},
                        color: AppColors.primary,
                        textColor: AppColors.background,
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: [
                          Text(
                            'لديك حساب بالفعل؟',
                            style: AppStyles.textStyle18.copyWith(
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const SigninView(),
                                ),
                              );
                            },
                            child: Text(
                              ' تسجيل الدخول',
                              style: AppStyles.textStyle18.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
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

class _AccountTypeRow extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool?> onChanged;

  const _AccountTypeRow({
    required this.label,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(color: AppColors.primary, width: 1.5),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            label,
            style: AppStyles.textStyle14,
            textDirection: TextDirection.rtl,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
