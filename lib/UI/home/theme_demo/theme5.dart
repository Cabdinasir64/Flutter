import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Theme5 extends StatelessWidget {
  const Theme5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.check_circle,
                size: 120,
                color: AppColors.success,
              ),
              const SizedBox(height: 20),
              Text("Payment Successful!", style: AppFonts.h1),
              const SizedBox(height: 10),
              Text(
                "Waad ku mahadsantahay iibsashadaada. "
                "Dalabkaaga waa la farsameeyey.",
                textAlign: TextAlign.center,
                style: AppFonts.body,
              ),
              const SizedBox(height: 40),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  side: const BorderSide(color: AppColors.primary),
                ),
                onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/theme3',
                  (route) => false,
                ),
                child: Text(
                  "BACK TO HOME",
                  style: AppFonts.body.copyWith(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
