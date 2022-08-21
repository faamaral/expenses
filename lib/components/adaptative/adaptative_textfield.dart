///
/// @Author Fabiano Amaral Alves
///
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptativeTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String) onSubmitted;

  AdaptativeTextField({
    required this.controller,
    required this.onSubmitted,
    this.keyboardType = TextInputType.text,
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? Padding(
          padding: const EdgeInsets.only(
            bottom: 10
          ),
          child: CupertinoTextField(
              controller: this.controller,
              keyboardType: this.keyboardType,
              onSubmitted: this.onSubmitted,
              placeholder: this.label,
              padding: EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 12
              ),
            ),
        )
        : TextField(
            decoration: InputDecoration(labelText: this.label),
            controller: this.controller,
            keyboardType: this.keyboardType,
            onSubmitted: this.onSubmitted,
          );
  }
}
