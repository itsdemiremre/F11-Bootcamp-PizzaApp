import 'package:flutter/material.dart';
import 'package:pizza_app/components/pizza_tile.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Pizza pizza) {
    Provider.of<PizzaApp>(context, listen: false).removeFromCart(pizza);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PizzaApp>(
        builder: (context, value, child) => SafeArea(
              child: Padding(
                padding: EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Text(
                      "Your Cart",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: value.cart.length,
                        itemBuilder: (context, index) {
                          Pizza pizza = value.cart[index];

                          return PizzaTile(
                              pizza: pizza,
                              onTap: () => removeFromCart(pizza),
                              trailing: Icon(Icons.delete));
                        },
                      ),
                    ),
                    MaterialButton(
                      child: Text("Pay"),
                      color: Colors.amber,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ));
  }
}
