import 'package:flutter/material.dart';
import 'package:cadastrousuario/config/custom_colors.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextField({
    super.key,
    required this.icon,
    required this.label,
    this.isSecret = false,
    this.inputFormatters,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = false;

  @override
  void initState() {
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.inputFormatters,
      obscureText: isObscure,
      decoration: InputDecoration(
        prefixIcon: Icon(
          widget.icon,
          color: CustomColors.customColorWhite,
        ),
        suffixIcon: widget.isSecret
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: CustomColors.customColorWhite,
                ),
              )
            : null,
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
