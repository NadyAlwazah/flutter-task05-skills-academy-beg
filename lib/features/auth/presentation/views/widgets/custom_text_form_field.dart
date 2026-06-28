import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.textInputType,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.controller,
  });
  final String hintText;

  final Widget? suffixIcon;
  final TextInputType textInputType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool isObscured;

  @override
  void initState() {
    super.initState();
    isObscured = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: isObscured,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  isObscured ? Icons.visibility_off : Icons.visibility,
                  color: const Color(0xFF777A86),
                ),
                onPressed: () {
                  setState(() {
                    isObscured = !isObscured;
                  });
                },
              )
            : widget.suffixIcon,
        hintText: widget.hintText,
        hintStyle: TextStyle(fontSize: 16.sp, color: const Color(0xFF777A86)),
        filled: true,
        fillColor: const Color(0xFFE0E2EF),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: const BorderSide(width: 1, color: Color(0xFFC5C6D2)),
    );
  }
}
