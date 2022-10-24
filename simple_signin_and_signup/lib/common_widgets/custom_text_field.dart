import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.title, Key? key}) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 5),
        ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: const TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xFF202e4e),
              hintText: 'Type here...',
              hintStyle: TextStyle(
                color: Color(0xFF798194),
                fontSize: 18,
              ),
              border: InputBorder.none,
            ),
          ),
        ),

      ],
    );
  }
}