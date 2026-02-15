import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Theme7 extends StatelessWidget {
  const Theme7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors
          .secondary, 
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, 
        elevation: 0,
        title: Text(
          "Arrived!",
          style: AppFonts.h2.copyWith(color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.check_circle,
                  size: 60,
                  color: AppColors.success,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                "Theme 7 Reached",
                style: AppFonts.h1.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 10),
              Text(
                "Waxaan ku nimid halkan 'Slide Transition' oo ka yimid midig -> bidix.",
                textAlign: TextAlign.center,
                style: AppFonts.body.copyWith(color: Colors.white70),
              ),
              const SizedBox(height: 50),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                onPressed: () => Navigator.pop(context),
                child: Text("GO BACK", style: AppFonts.button),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
