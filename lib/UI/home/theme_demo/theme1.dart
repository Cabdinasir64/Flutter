import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Theme1 extends StatelessWidget {
  const Theme1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgLight,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "Theme One",
          style: AppFonts.h2.copyWith(color: Colors.white),
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Main Heading", style: AppFonts.h1),
            const SizedBox(height: 8),
            Text("This is a subtitle or caption text", style: AppFonts.caption),
            const SizedBox(height: 24),
            Text("Body Paragraph", style: AppFonts.h2),
            const SizedBox(height: 8),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              style: AppFonts.body,
            ),
            const SizedBox(height: 30),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: AppColors.textMuted.withOpacity(0.2)),
              ),
              child: Column(
                children: [
                  Text(
                    "Success Action",
                    style: AppFonts.h2.copyWith(color: AppColors.success),
                  ),
                  const SizedBox(height: 12),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 50,
                    color: AppColors.success,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    onPressed: () {},
                    child: Text("CONFIRM", style: AppFonts.button),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: AppColors.danger,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text("DELETE", style: AppFonts.button),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: AppColors.warning,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text("WARNING", style: AppFonts.button),
            ),
            const SizedBox(height: 15),
            MaterialButton(
              minWidth: double.infinity,
              height: 50,
              color: AppColors.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Text("SECONDARY", style: AppFonts.button),
            ),
          ],
        ),
      ),
    );
  }
}
