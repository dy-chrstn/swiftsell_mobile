import 'package:flutter/material.dart';
import 'package:swiftsell_mobile/common/constants/strings.dart';

class ProductViewScreen extends StatelessWidget {
  const ProductViewScreen({super.key});

  static const routeName = 'ProductViewScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product View'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .stretch,
          spacing: 16,
          children: [
            Image.network(
              mockImage,
              cacheHeight: MediaQuery.of(context).size.width.toInt(),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: .symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: .stretch,
                spacing: 8,
                children: [
                  Text('Product Name'),
                  Text('Product Description'),
                  Text('Product Price'),
                  Text('Stock: '),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
