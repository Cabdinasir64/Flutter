import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';
import 'theme7.dart';

class Theme6 extends StatelessWidget {
  const Theme6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgLight,
      appBar: AppBar(
        title: Text(
          "Transition Start",
          style: AppFonts.h2.copyWith(color: Colors.white),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.flight_takeoff,
              size: 80,
              color: AppColors.primary,
            ),
            const SizedBox(height: 20),
            Text("Ready to Move?", style: AppFonts.h1),
            const SizedBox(height: 10),
            Text("Click below to slide to Theme 7", style: AppFonts.caption),
            const SizedBox(height: 40),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(_createRoute());
              },
              child: Text("GO TO THEME 7 (SLIDE)", style: AppFonts.button),
            ),
          ],
        ),
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => const Theme7(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.1, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween = Tween(
          begin: begin,
          end: end,
        ).chain(CurveTween(curve: curve));

        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
  }
}
