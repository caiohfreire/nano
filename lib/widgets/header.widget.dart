import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.filter_list_rounded,
          color: Colors.white,
          size: 32,
        ),
        Text(
          "Home",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.green,
          backgroundImage: NetworkImage(
            'https://instagram.fcgh11-1.fna.fbcdn.net/v/t51.2885-19/455906205_1170628510898024_1952353963852372544_n.jpg?_nc_ht=instagram.fcgh11-1.fna.fbcdn.net&_nc_cat=108&_nc_ohc=Rbb6CGRuJGoQ7kNvgGCXb8M&edm=APHcPcMBAAAA&ccb=7-5&oh=00_AYB4BLabmv0SV1921t5P2TSxCajmS6zoRbORIobQA_ZILw&oe=66E266E5&_nc_sid=bef7bc', // URL da imagem da internet
          ),
        )
      ],
    );
  }
}
