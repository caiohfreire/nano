import 'package:flutter/material.dart';
import 'package:nano/assets/colors/colors.dart';

class SearchWidget extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final String hintText;

  const SearchWidget({
    super.key,
    this.onChanged,
    this.hintText = 'Search for your task...',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(
          fontSize: 16.0,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white54,
            fontSize: 16.0,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Colors.white,
            size: 32,
          ),
          filled: true,
          fillColor: XColors.terrary,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: XColors.grey400,
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: XColors.grey400,
              width: 1,
            ),
          ),
        ),
        cursorColor: Colors.white,
      ),
    );
  }
}
