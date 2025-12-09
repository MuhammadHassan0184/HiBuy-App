import 'package:hibuy/config/utils/formatting.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppTextfield extends StatelessWidget {
  final String lable;
  final IconData? prefixIcon;
  const AppTextfield({super.key, required this.lable, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, color: Colors.grey, size: 20),
        hint: Text(lable, style: TextStyle(color: Colors.grey)),
        enabledBorder: myinputborderStyle(),
        focusedBorder: myinputborderStyle(true),
      ),
    );
  }
}

class VisableTextfield extends StatefulWidget {
  final String label;
  final IconData icon;
  final IconData suicon;
  final String? Function(String?)? validation; // Better type for validator

  const VisableTextfield({
    super.key,
    required this.label,
    required this.icon,
    required this.suicon,
    this.validation,
  });

  @override
  State<VisableTextfield> createState() => _VisableTextfieldState();
}

class _VisableTextfieldState extends State<VisableTextfield> {
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: showPass,
      validator: widget.validation, // validation function used here
      decoration: InputDecoration(
        hintText: widget.label, // use widget.label instead of lable
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: Icon(widget.icon, color: Colors.grey, size: 20),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              showPass = !showPass;
            });
          },
          icon: Icon(
            showPass ? Icons.visibility_sharp : Icons.visibility_off,
            color: Colors.grey,
            size: 20,
          ),
        ),
        enabledBorder: myinputborderStyle(),
        focusedBorder: myinputborderStyle(true),
      ),
    );
  }
}
