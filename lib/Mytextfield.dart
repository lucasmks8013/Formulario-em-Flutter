import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key, required this.title});
    final String? title;

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        label: Text(widget.title!),
        border: OutlineInputBorder(),
      ),
    );
  }
}
