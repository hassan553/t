// import 'dart:core';
// import 'package:flutter/material.dart';
// import '../utils/app_colors.dart';
// import 'package:extended_image/extended_image.dart';
// import 'package:shimmer/shimmer.dart';

// class CustomAssetsImage extends StatelessWidget {
//   final String? path;
//   final double? width;
//   final double? height;
//   final BoxFit? boxFit;
//   const CustomAssetsImage({
//     Key? key,
//     required this.path,
//     this.width,
//     this.height,
//     this.boxFit,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       path ?? '',
//       width: width,
//       height: height,
//       fit: boxFit,
//       errorBuilder:
//           (BuildContext context, Object exception, StackTrace? stackTrace) {
//         return const Icon(Icons.error);
//       },
//     );
//   }
// }

// class CustomNetworkImage extends StatelessWidget {
//   final String? imagePath;
//   final double? width;
//   final double? height;
//   final BoxFit? boxFit;
//   const CustomNetworkImage({
//     super.key,
//     this.imagePath,
//     this.width,
//     this.height,
//     this.boxFit,
//   });

//   @override
//   Widget build(BuildContext context) {
//     print('image$imagePath');
//     return Image.network(
//       imagePath ?? '',
//       fit: boxFit,
//       loadingBuilder: (BuildContext context, Widget child,
//           ImageChunkEvent? loadingProgress) {
//         if (loadingProgress == null) {
//           return child;
//         }
//         return Center(
//           child: CircularProgressIndicator(
//             value: loadingProgress.expectedTotalBytes != null
//                 ? loadingProgress.cumulativeBytesLoaded /
//                     loadingProgress.expectedTotalBytes!
//                 : null,
//             color: AppColors.primaryColor,
//           ),
//         );
//       },
//       errorBuilder:
//           (BuildContext context, Object exception, StackTrace? stackTrace) {
//         return const Icon(Icons.error);
//       },
//     );
//   }
// }

// class AppNetworkImage extends StatelessWidget {
//   const AppNetworkImage(
//       {super.key,
//       required this.url,
//       this.width,
//       this.height,
//       this.boxFit,
//       this.borderRadius,
//       this.maxByte});
//   final String url;
//   final int? maxByte;
//   final BorderRadius? borderRadius;
//   final BoxFit? boxFit;
//   final double? width;
//   final double? height;
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: borderRadius ?? BorderRadius.circular(0),
//       child: SizedBox(
//         height: height ?? double.infinity,
//         width: width ?? double.infinity,
//         child: ExtendedImage.network(
//           url,
//           fit: boxFit,
//           cache: true,
//           maxBytes: maxByte ?? 100000,
//           loadStateChanged: (state) {
//             switch (state.extendedImageLoadState) {
//               case LoadState.loading:
//                 return Shimmer.fromColors(
//                     baseColor: AppColors.greyAccent,
//                     highlightColor: AppColors.white,
//                     child: Container(
//                       color: AppColors.white,
//                     ));
//               case LoadState.failed:
//                 return const Icon(Icons.report_gmailerrorred);
//               default:
//                 return null;
//             }
//           },
//         ),
//       ),
//     );
//   }
// }
