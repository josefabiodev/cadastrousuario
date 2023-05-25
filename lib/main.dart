import 'package:cadastrousuario/pages/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {}

class CadastroUsuario extends StatelessWidget {
  const CadastroUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpScreen(),
    );
  }
}
