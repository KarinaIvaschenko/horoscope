import 'package:flutter/material.dart';

class ZodiacSignButton extends StatelessWidget {
  final String signName;
  final Widget page;

  const ZodiacSignButton({
    super.key,
    required this.signName,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _navigateToPage(context),
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.indigo),
          fixedSize: MaterialStatePropertyAll<Size>(Size(180, 40))),
      child: Text(
        signName,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  void _navigateToPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }
}
