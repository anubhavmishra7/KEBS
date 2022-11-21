import 'package:expense/utilities/style.dart';
import 'package:flutter/material.dart';

class ExpenseAppBar extends StatelessWidget {
  const ExpenseAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.red,
      title: Text(
        'KEBS',
        style: kTitleStyle,
      ),
      centerTitle: true,
      automaticallyImplyLeading: true,
    );
  }
}
