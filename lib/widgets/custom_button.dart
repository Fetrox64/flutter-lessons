import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double padding;
  final Color color;
  final String route;

  const CustomButton(
    this.title, {
    super.key,
    this.color = const Color.fromARGB(255, 57, 174, 61),
    this.padding = 0.3,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 35),
      child: ElevatedButton(
        onPressed: () => Navigator.pushNamed(context, route),
        style: ElevatedButton.styleFrom(
          elevation: 12.0,
          backgroundColor: color,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: deviceSize.width * padding,
            vertical: 15,
          ),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
