import 'package:flutter/material.dart';
import 'package:pizza_app/models/pizza.dart';
import 'package:pizza_app/models/shop.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatefulWidget {
  final Pizza pizza;
  const OrderPage({super.key, required this.pizza});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  double thicknessValue = 0.5;
  double pepperoniValue = 0.5;
  double mushroomValue = 0.5;
  double greenPepperValue = 0.5;
  double oliveValue = 0.5;

  void customizeThickness(double newValue) {
    setState(() {
      thicknessValue = newValue;
    });
  }

  void customizdePepperoni(double newValue) {
    setState(() {
      pepperoniValue = newValue;
    });
  }

  void customizdeMushroom(double newValue) {
    setState(() {
      mushroomValue = newValue;
    });
  }

  void customizdeGreenPepper(double newValue) {
    setState(() {
      greenPepperValue = newValue;
    });
  }

  void customizdeOlive(double newValue) {
    setState(() {
      oliveValue = newValue;
    });
  }

  void addToCart() {
    Provider.of<PizzaApp>(context, listen: false).addToCart(widget.pizza);
    Navigator.pop(context);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Sucsesfully added to The Cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.pizza.name),

      ),
      backgroundColor: Color.fromARGB(255, 87, 98, 133),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //pizza image
            Image.asset(widget.pizza.image),
            //slider to costumize Pizza igredients
      
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Thickness of the Dough",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.grey,
                            value: thicknessValue,
                            label: thicknessValue.toString(),
                            divisions: 2,
                            onChanged: (value) => customizeThickness(value)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Pepperoni",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.grey,
                            value: pepperoniValue,
                            label: pepperoniValue.toString(),
                            divisions: 1,
                            onChanged: (value) => customizdePepperoni(value)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Green Pepper",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.grey,
                            value: greenPepperValue,
                            label: greenPepperValue.toString(),
                            divisions: 1,
                            onChanged: (value) => customizdeGreenPepper(value)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,                     
                        child: Text("Olive",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.grey,
                            value: oliveValue,
                            label: oliveValue.toString(),
                            divisions: 1,
                            onChanged: (value) => customizdeOlive(value)),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        child: Text("Mushroom",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold)),
                      ),
                      Expanded(
                        child: Slider(
                          activeColor: Colors.redAccent,
                          inactiveColor: Colors.green,
                          thumbColor: Colors.grey,
                            value: mushroomValue,
                            label: mushroomValue.toString(),
                            divisions: 1,
                            onChanged: (value) => customizdeMushroom(value)),
                      ),
                    ],
                  )
                ],
              ),
            ),
      
            SizedBox(
              width: 150,
              child: Expanded(
                child: ElevatedButton(
                  child: Text("Add to the Cart"),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: addToCart,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
