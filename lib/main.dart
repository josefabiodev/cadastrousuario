import 'package:cadastrousuario/config/custom_colors.dart';
import 'package:cadastrousuario/pages/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CadastroUsuario());
}

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: CustomColors.customColorWhite,
          selectionColor: CustomColors.customColorWhitealpha150,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
    );
  }
}
