import 'package:epay_nubank/main.dart';
import 'package:epay_nubank/widgets/credit_card_container.dart';
import 'package:flutter/material.dart';
import '../widgets/card_container.dart';
import '../widgets/head_nubank.dart';
import '../widgets/investment_container.dart';
import '../widgets/list_icons_nubank.dart';
import '../widgets/loan_container.dart';
import '../widgets/security_life_container.dart';

class ConfirmationPage extends StatelessWidget {
  final String cart;

  const ConfirmationPage({Key? key, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Container(
                    child: Column(
                      children: [
                        const head_nubank(),
                        Text(cart),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => const App()),
                            );
                          },
                          child: const Text(
                            "Voltar para Home",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF8400D3),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40))),
                        ),
                      ],
                    )
                )
            )
        )
    );
  }
}
