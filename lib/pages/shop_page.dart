import 'package:flutter/material.dart';
import 'package:pizza_app/components/pizza_tile.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/pages/order_page.dart';
import 'package:provider/provider.dart';
import '../models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //go to order page
  void goToOrderPage(Pizza pizza) {
    //navigate to order page
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage(pizza: pizza),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PizzaApp>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: Column(
            children: [
              // heading
              Text(
                "PizzaApp Shop",
                style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
              ),

              const SizedBox(
                height: 15,
              ),

              // list of pizzas for sale
              Expanded(
                child: ListView.builder(
                  itemCount: value.shop.length,
                  itemBuilder: (context, index) {
                    //get individual pizza from shop
                    Pizza individualPizza = value.shop[index];
                    //return that pizza as a nice tile
                    return PizzaTile(
                      pizza: individualPizza,
                      onTap: () => goToOrderPage(individualPizza),
                      trailing: Icon(Icons.arrow_forward),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
