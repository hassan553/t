import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../utils/app_colors.dart';

class CustomLoadingWidget extends StatelessWidget {
  const CustomLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final platForm = Theme.of(context).platform;
    return Center(
      child: platForm == TargetPlatform.android
          ? const CircularProgressIndicator(color: AppColors.primaryColor)
          : const CupertinoActivityIndicator(color: AppColors.primaryColor),
    );
  }
}
