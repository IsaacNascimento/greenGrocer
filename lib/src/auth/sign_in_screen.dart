import 'package:flutter/material.dart';
import 'package:greengrocer/src/auth/components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [
            Expanded(
              child: Container(color: Colors.green),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(45),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const CustomTextField(
                    icon: Icons.email,
                    label: 'Email',
                  ),
                  const CustomTextField(
                    icon: Icons.lock,
                    label: 'Senha',
                    isSecret: true,
                  ),
                  SizedBox(
                    height: 50.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),

                      //BTN ENTRAR

                      onPressed: () {},
                      child: const Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),

                  //ESQUECEU A SENHA

                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),

                  // DIVISOR

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text('Ou'),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.grey.withAlpha(90),
                            thickness: 2,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // BTN Novo usuario

                  SizedBox(
                    height: 50.0,
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        side: const BorderSide(width: 2.0, color: Colors.green),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Criar Conta',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
