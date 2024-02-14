import 'package:cardify/screens/dashboard/containers/my_cards_container.dart';
import 'package:cardify/screens/dashboard/containers/transactions_container.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [MyCards(), TransactionContainer()]);
  }
}
