import 'package:flutter/material.dart';
import '../../theme/app_colors.dart';
import '../../theme/app_fonts.dart';

class Theme2 extends StatelessWidget {
  const Theme2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgLight,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.menu, color: AppColors.textMain),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundColor: AppColors.primary.withOpacity(0.1),
              child: Icon(Icons.person, color: AppColors.primary),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Ahmed!", style: AppFonts.h1),
            Text("You have 5 tasks for today", style: AppFonts.caption),
            const SizedBox(height: 25),

            Row(
              children: [
                Expanded(
                  child: _buildStatCard(
                    "In Progress",
                    "12",
                    AppColors.primary,
                    Icons.timer,
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: _buildStatCard(
                    "Completed",
                    "28",
                    AppColors.success,
                    Icons.check_circle,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Recent Tasks", style: AppFonts.h2),
                Text(
                  "View All",
                  style: AppFonts.caption.copyWith(color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(height: 15),

            _buildTaskItem(
              "Mobile App Design",
              "High Priority",
              AppColors.danger,
            ),
            _buildTaskItem("API Integration", "Medium", AppColors.warning),
            _buildTaskItem("Bug Fixing", "Low", AppColors.secondary),
            _buildTaskItem("Client Meeting", "Urgent", AppColors.danger),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget _buildStatCard(
    String title,
    String count,
    Color color,
    IconData icon,
  ) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.white, size: 30),
          const SizedBox(height: 15),
          Text(count, style: AppFonts.h1.copyWith(color: Colors.white)),
          Text(
            title,
            style: AppFonts.button.copyWith(fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(String title, String tag, Color tagColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.textMuted.withOpacity(0.1)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppFonts.body.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: tagColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  tag,
                  style: AppFonts.caption.copyWith(
                    color: tagColor,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios, size: 16, color: AppColors.textMuted),
        ],
      ),
    );
  }
}
