import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  final List<String> errors;
  const FormError({super.key, required this.errors});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        errors.length,
        (index) => Text(
          " * ${errors[index]}",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
