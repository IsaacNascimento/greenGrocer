import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/pages/auth/components/custom_text_field.dart';
import 'package:greengrocer/src/pages/auth/sign_up_screen.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import '../../config/custom_color.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: CustomColors.customSwatchColor,
        body: SingleChildScrollView(
          child: SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              children: [
                Expanded(
                  // Nome do APP
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: const TextStyle(
                            fontSize: 40.0,
                          ),
                          children: [
                            const TextSpan(
                              text: 'Green',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'grocer',
                              style: TextStyle(
                                color: CustomColors.customContrastColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35.0,
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 25,
                          ),
                          child: AnimatedTextKit(
                              pause: Duration.zero,
                              repeatForever: true,
                              animatedTexts: [
                                FadeAnimatedText('Frutas'),
                                FadeAnimatedText('Verduras'),
                                FadeAnimatedText('Legumes'),
                                FadeAnimatedText('Carnes'),
                                FadeAnimatedText('Cereais'),
                                FadeAnimatedText('Laticíneos'),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 40, horizontal: 32),
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

                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (c) {
                              return const BaseScreen();
                            }));
                          },
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
                          child: Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                color: CustomColors.customContrastColor),
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
                            side: const BorderSide(
                                width: 2.0, color: Colors.green),
                          ),
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (c) {
                                return SignUpScreen();
                              }),
                            );
                          },
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
        ),
      ),
    );
  }
}
