import 'package:epay_nubank/pages/web_view_page.dart';
import 'package:flutter/material.dart';

class list_icons_nubank extends StatelessWidget {
  const list_icons_nubank({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _actionsItem(
              icon: Icons.monetization_on,
              name: "Comprar",
              context: context
            ),
            _actionsItem(
              icon: Icons.shopping_cart,
              name: "Pagar",
            ),
            _actionsItem(
              icon: Icons.account_balance_rounded,
              name: "Depositar",
            ),
            _actionsItem(
              icon: Icons.accessibility_new_outlined,
              name: "Transferir",
            ),
            _actionsItem(
              icon: Icons.credit_card,
              name: "Cartão",
            ),
            _actionsItem(
              icon: Icons.credit_score,
              name: "Score",
            ),
            _actionsItem(
              icon: Icons.account_balance,
              name: "Balance",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
            _actionsItem(
              icon: Icons.pix,
              name: "Pix",
            ),
          ],
        ),
      ),
    );
  }
}

_actionsItem({required IconData icon, required String name, context}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WebViewExample()),
      );
    },
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey[100]),
            child: Column(
              children: [
                Icon(icon, color: Colors.black),
              ],
            ),
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
