import 'package:flutter/material.dart';
import 'package:breezy/models/product_entry.dart';
import 'package:breezy/widgets/left_drawer.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.fields.name),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "IDR ${product.fields.price}",
              style: const TextStyle(
                fontSize: 24.0,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(product.fields.description),
            const SizedBox(height: 16.0),
            Text("Size: ${product.fields.ukuran}"),
            const SizedBox(height: 8.0),
            Text("Aroma: ${product.fields.aroma}"),
            const SizedBox(height: 8.0),
            Text("Top Notes: ${product.fields.topNotes}"),
            const SizedBox(height: 8.0),
            Text("Middle Notes: ${product.fields.middleNotes}"),
            const SizedBox(height: 8.0),
            Text("Base Notes: ${product.fields.baseNotes}"),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Back to Product List'),
            ),
          ],
        ),
      ),
    );
  }
}