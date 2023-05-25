import 'package:cadastrousuario/pages/common_widgets/custom_text_fiels.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Cadstro de usuário',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(
                  Radius.circular(18),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 8),
                  ),
                ],
              ),
              height: 600,
              width: 500,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 56),
                            child: Text(
                              'Cadastro',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ),
                        ),

                        // Formulário
                        const CustomTextField(
                          icon: Icons.person,
                          label: "Nome",
                        ),
                        const CustomTextField(
                          icon: Icons.file_copy,
                          label: "Cpf",
                        ),
                        const CustomTextField(
                          icon: Icons.phone_android,
                          label: "Celular",
                        ),
                        const CustomTextField(
                          icon: Icons.email,
                          label: "Email",
                        ),
                        const CustomTextField(
                          icon: Icons.email,
                          label: "Confirmação email",
                        ),
                        const CustomTextField(
                          icon: Icons.lock,
                          label: "Senha",
                        ),
                        const CustomTextField(
                          icon: Icons.lock,
                          label: "Confirmação senha",
                        ),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Cadastrar usuário",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.teal,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
