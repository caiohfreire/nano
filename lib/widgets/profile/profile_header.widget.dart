import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(height: 16),
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 24),
                ClipOval(
                  child: SizedBox.fromSize(
                    size: const Size.fromRadius(48),
                    child: Image.network(
                      'https://instagram.fcgh11-1.fna.fbcdn.net/v/t51.2885-19/455906205_1170628510898024_1952353963852372544_n.jpg?_nc_ht=instagram.fcgh11-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=ZojRHMX6dMcQ7kNvgEXrhu2&_nc_gid=5c7df77882604baead19c59bf13fa4da&edm=APHcPcMBAAAA&ccb=7-5&oh=00_AYC1bG-e1W-Czp1qxPEOvAMsCigACl4ndqt6DibhVpND5w&oe=66EB6925&_nc_sid=bef7bc',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  "Caio Freire",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
