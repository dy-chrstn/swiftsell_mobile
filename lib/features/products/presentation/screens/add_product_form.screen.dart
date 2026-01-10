import 'package:flutter/material.dart';
import 'package:swiftsell_mobile/common/widgets/custom_field.widget.dart';

class AddProductFormScreen extends StatefulWidget {
  const AddProductFormScreen({super.key});

  static const String routeName = 'AddProductFormScreen';

  @override
  State<AddProductFormScreen> createState() => _AddProductFormScreenState();
}

class _AddProductFormScreenState extends State<AddProductFormScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final descriptionController = TextEditingController();
  final priceController = TextEditingController();
  final barcodeController = TextEditingController();
  bool isAvailable = false;

  @override
  void dispose() {
    nameController.dispose();
    descriptionController.dispose();
    priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        padding: .all(16),
        child: Column(
          spacing: 16,
          crossAxisAlignment: .stretch,
          children: [
            Row(
              spacing: 16,
              children: [
                SizedBox.square(
                  dimension: 150,
                  child: Card.filled(
                    child: Center(
                      child: Icon(Icons.image),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: .stretch,
                    spacing: 8,
                    children: [
                      OutlinedButton.icon(
                        onPressed: () {},
                        label: Text('Upload from Gallery'),
                        icon: Icon(Icons.upload_file),
                      ),
                      OutlinedButton.icon(
                        onPressed: () {},
                        label: Text('Upload from Camera'),
                        icon: Icon(Icons.camera_alt),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            CustomFieldWidget(
              controller: barcodeController,
              isReadOnly: true,
              hintText: 'Barcode',
              suffixIcon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.barcode_reader),
              ),
            ),
            CustomFieldWidget(
              controller: nameController,
              labelText: 'Product Name',
            ),
            CustomFieldWidget(
              controller: descriptionController,
              labelText: 'Product Description',
            ),
            CustomFieldWidget(controller: priceController, labelText: 'Price'),
            CheckboxListTile.adaptive(
              value: isAvailable,
              title: Text('Is the item available?'),
              onChanged: (bool? value) {
                if (value == null) return;

                setState(() {
                  isAvailable = value;
                });
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: .all(16.0),
          child: FilledButton(
            onPressed: () {},
            child: Text('Submit'),
          ),
        ),
      ),
    );
  }
}
