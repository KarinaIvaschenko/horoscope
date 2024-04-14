import 'package:flutter/material.dart';

class ZodiacSignBackButton extends StatelessWidget {
  const ZodiacSignBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.indigo),
          fixedSize: MaterialStatePropertyAll<Size>(Size(180, 40))),
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text(
        'Back',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
