import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nano/assets/colors/colors.dart';
import 'package:nano/widgets/profile/profile_header.widget.dart';
import 'package:nano/widgets/shared/icon_text.widget.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: XColors.background,
      body: Column(
        children: [
          const ProfileHeaderWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: XColors.grey300,
                  ),
                ),
                const SizedBox(height: 16),
                IconTextWidget(
                  icon: LucideIcons.settings,
                  label: "App Settings",
                  onTap: () {},
                ),
                const SizedBox(height: 24),
                Text(
                  "Account",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: XColors.grey300,
                  ),
                ),
                const SizedBox(height: 16),
                IconTextWidget(
                  icon: LucideIcons.user,
                  label: "Change account name",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                IconTextWidget(
                  icon: LucideIcons.keyRound,
                  label: "Change account password",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                IconTextWidget(
                  icon: LucideIcons.camera,
                  label: "Change account Image",
                  onTap: () {},
                ),
                const SizedBox(height: 24),
                Text(
                  "More",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: XColors.grey300,
                  ),
                ),
                const SizedBox(height: 16),
                IconTextWidget(
                  icon: LucideIcons.zap,
                  label: "Help & Feedback",
                  onTap: () {},
                ),
                const SizedBox(height: 10),
                IconTextWidget(
                  icon: LucideIcons.logOut,
                  label: "Log out",
                  color: XColors.error,
                  rotateIcon: true,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
