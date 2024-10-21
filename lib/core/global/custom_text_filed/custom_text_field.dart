import 'package:ecomerce_ieee/core/services/validation_service.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final GlobalKey<FormState> formKey;
  final Widget? suffixIcon;
  final String label;
  final bool isEmail;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.formKey,
    required this.label,
    this.suffixIcon,
    this.isEmail = false,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.isPassword ? _obscureText : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(icon: Icon(
            _obscureText ? Icons.remove_red_eye_outlined : Icons.visibility_off,
          ),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
        ) : widget.suffixIcon,
        fillColor: Colors.white,
        filled: true,
        hintText: widget.label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      validator: (value) {
        if (widget.isEmail) {
          return ValidationService.validateEmail(value);
        }
        if (widget.isPassword) {
       return ValidationService.validatePassword(value);
        }
        {
          return ValidationService.validateEmpty(value, widget.label);
        }

      },
    );
  }
}
