import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:t/core/extension/text_theme_extension.dart';
import 'package:t/core/utils/app_colors.dart';

import '../../../core/utils/app_size.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
                Text('Login',
                    style: context.titleLarge!
                        .copyWith(fontWeight: FontWeight.bold)),
                const SizedBox(height: Sizes.s4),
                Text('Welcome to CarStore', style: context.bodyMedium),
                const SizedBox(height: Sizes.s40),
                
              ],
            )),
          ],
        ),
      ),
    );
  }
}
