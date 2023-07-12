import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

class PizzaTile extends StatelessWidget {
  final Pizza pizza;
  void Function()? onTap;

   PizzaTile({super.key, required this.pizza, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.circular(4)
        ),
        child: ListTile(
          title: Text(pizza.name),
          subtitle: Text(pizza.price),
          leading: Image.asset(pizza.image),
          trailing: Icon(Icons.arrow_forward_rounded),
        ),
      ),
    );
  }
}