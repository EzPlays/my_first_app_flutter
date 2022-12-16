import 'package:flutter/material.dart';

class ElevatedContentWidget extends StatelessWidget {
  const ElevatedContentWidget({
    super.key,
    required this.textbuttom,
  });

  final String textbuttom;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        shape: const StadiumBorder(),
      ),
      child: Text(textbuttom),
    );
  }
}
