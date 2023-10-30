import 'package:flutter/material.dart';
import 'package:synergym/src/shared/themes/app_colors.dart';
import 'package:synergym/src/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size mySize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.shape, AppColors.stroke],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
            ),
            child: Center(
              child: Image.asset(
                AppImages.logoFull,
                width: mySize.width * 0.8,
                height: mySize.height * 0.8,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class SplashPage extends StatelessWidget {
//   const SplashPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size mySize = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//               colors: [AppColors.shape, AppColors.stroke],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft),
//         ),
//         child: Center(
//           child: Image.asset(
//             AppImages.logoFull,
//             width: mySize.width * 0.8,
//             height: mySize.height * 0.8,
//           ),
//         ),
//       ),
//     );
//   }
// }
