import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/routes/app_routes.dart';

class CarStoreApp extends StatelessWidget {
  const CarStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (_, child) {
        return MaterialApp(
          title: 'Car Store',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const Scaffold(),
          routes: routes,
          initialRoute: AppRoutes.register,
        );
      },
    );
  }
}
