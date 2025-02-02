import 'package:flutter/material.dart';

class LaundryPage extends StatefulWidget {
  const LaundryPage({super.key});

  @override
  _LaundryPageState createState() => _LaundryPageState();
}

class _LaundryPageState extends State<LaundryPage> {
  final TextEditingController _clothesController = TextEditingController();
  final double pricePerCloth = 5.0;
  double totalPrice = 0.0;

  void calculatePrice() {
    final int numberOfClothes = int.tryParse(_clothesController.text) ?? 0;
    setState(() {
      totalPrice = numberOfClothes * pricePerCloth;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laundry'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Welcome to the Laundry Page',
                style: TextStyle(fontSize: 20)),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _clothesController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter number of clothes',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: calculatePrice,
              child: const Text('Calculate Price'),
            ),
            const SizedBox(height: 20),
            Text('Total Price: \$${totalPrice.toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('Go to Profile Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
