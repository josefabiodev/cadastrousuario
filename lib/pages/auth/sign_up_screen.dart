import 'package:cadastrousuario/pages/common_widgets/custom_text_fiels.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:cadastrousuario/config/custom_colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cpfFormatter = MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );

  final phoneFormatter = MaskTextInputFormatter(
    mask: '(##) # ####-####',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.CustomColorTeal,
        centerTitle: true,
        elevation: 1,
        title: Text(
          'Cadastro de usuário',
          style: TextStyle(color: CustomColors.customColorWhite),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Container(
              decoration: BoxDecoration(
                color: CustomColors.CustomColorTeal,
                borderRadius: const BorderRadius.all(
                  Radius.circular(18),
                ),
                boxShadow: [
                  BoxShadow(
                    color: CustomColors.CustomColorGrey,
                    blurRadius: 4,
                    offset: const Offset(4, 8),
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
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 56),
                            child: Text(
                              'Cadastro',
                              style: TextStyle(
                                color: CustomColors.customColorWhite,
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
                        CustomTextField(
                          icon: Icons.file_copy,
                          label: "Cpf",
                          inputFormatters: [cpfFormatter],
                        ),
                        CustomTextField(
                          icon: Icons.phone_android,
                          label: "Celular",
                          inputFormatters: [phoneFormatter],
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
                          isSecret: true,
                        ),
                        const CustomTextField(
                          icon: Icons.lock,
                          label: "Confirmação senha",
                          isSecret: true,
                        ),
                        SizedBox(
                          height: 45,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: CustomColors.customColorWhite,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              "Cadastrar usuário",
                              style: TextStyle(
                                fontSize: 18,
                                color: CustomColors.CustomColorTeal,
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
