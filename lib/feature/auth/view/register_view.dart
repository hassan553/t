import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t/core/extension/navigation_extension.dart';
import 'package:t/core/extension/text_theme_extension.dart';
import 'package:t/core/routes/app_routes.dart';
import 'package:t/core/utils/app_colors.dart';

import '../../../core/utils/app_size.dart';
import '../../../core/widgets/custom_button.dart';
import '../../../core/widgets/custom_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(Sizes.s24),
        child: ListView(
          children: [
            const SizedBox(height: Sizes.s12),
            Center(
              child: CircleAvatar(
                radius: 40.r,
                backgroundColor: AppColors.primaryColor,
                child: Text('C',
                    style: context.displayMedium!
                        .copyWith(color: AppColors.white)),
              ),
            ),
            const SizedBox(height: Sizes.s95),
            Center(
                child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sign Up',
                    style: context.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: Sizes.s4),
                Text('Find your dream car!', style: context.bodyMedium),
                const SizedBox(height: Sizes.s40),
                const CustomTextField(
                  hintText: 'Full name',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Sizes.s24.h),
                const CustomTextField(
                  hintText: 'Email address',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Sizes.s24.h),
                const CustomTextField(
                  hintText: 'Phone number',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Sizes.s24.h),
                const CustomTextField(
                  hintText: 'Password',
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: Sizes.s24.h),
                SizedBox(height: Sizes.s24.h),
                CustomButton(
                    color: AppColors.primaryColor,
                    title: 'Sign Up',
                    function: () {}),
                SizedBox(height: Sizes.s24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: AppColors.offGray),
                    ),
                    TextButton(
                        onPressed: () =>
                            context.navigateToPage(page: AppRoutes.login),
                        child: Text('Sign In',
                            style: context.bodyMedium!
                                .copyWith(color: AppColors.primaryColor))),
                    SizedBox(height: Sizes.s66.h),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
