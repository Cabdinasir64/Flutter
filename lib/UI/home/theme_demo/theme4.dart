import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Theme4 extends StatelessWidget {
  const Theme4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: AppColors.primary,
            child: const Icon(Icons.image, size: 100, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Premium Product Design", style: AppFonts.h1),
                const SizedBox(height: 10),
                Text(
                  "Kani waa sharaxaad kooban oo ku saabsan alaabta aad dooratay. "
                  "Waxaan isticmaaleynaa fonts-ka aan horey u sameysanay.",
                  style: AppFonts.body,
                ),
                const SizedBox(height: 40),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 55,
                  color: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  onPressed: () => Navigator.pushNamed(context, '/theme5'),
                  child: Text("BUY NOW", style: AppFonts.button),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
