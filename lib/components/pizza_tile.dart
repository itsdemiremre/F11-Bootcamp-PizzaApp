import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

class PizzaTile extends StatelessWidget {
  final Pizza pizza;
  void Function()? onTap;
  final Widget trailing;

  PizzaTile({
    super.key,
    required this.pizza,
    required this.onTap,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(4)),
        child: ListTile(
          title: Text(pizza.name),
          subtitle: Text(pizza.price),
          leading: Image.asset(pizza.image),
          trailing: trailing,
        ),
      ),
    );
  }
}
