import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';

class OrderPage extends StatefulWidget {
  final Pizza pizza;
  const OrderPage({super.key, required this.pizza});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pizza.name),
      ),
      backgroundColor: Color.fromARGB(255, 87, 98, 133),
      body: Column(
        children:[
        //pizza image
        Image.asset(widget.pizza.image),
        //slider to costumize Pizza igredients

          
        //add to cart button

        ],

      ),
    );
  }
}