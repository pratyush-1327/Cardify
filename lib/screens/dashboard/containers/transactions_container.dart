import 'package:cardify/screens/dashboard/widgets/transaction_history_component.dart';
import 'package:flutter/material.dart';

class TransactionContainer extends StatelessWidget {
  const TransactionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Transactions",
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              TransactionHistory(
                avatarBg: Colors.pink,
              ),
              TransactionHistory(
                avatarBg: Colors.yellow,
              ),
              TransactionHistory(
                avatarBg: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
