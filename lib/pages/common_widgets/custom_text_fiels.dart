import 'package:flutter/material.dart';
import 'package:cadastrousuario/config/custom_colors.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          color: CustomColors.customColorWhite,
        ),
        isDense: true,
        labelText: widget.label,
        labelStyle: TextStyle(
          color: CustomColors.customColorWhitealpha200,
        ),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.circular(18),
        // ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            color: CustomColors.customColorWhite,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide(
            width: 1.5,
            color: CustomColors.customColorWhite,
          ),
        ),
      ),
    );
  }
}
