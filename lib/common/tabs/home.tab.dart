import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:go_router/go_router.dart';
import 'package:swiftsell_mobile/common/constants/strings.dart';
import 'package:swiftsell_mobile/features/products/presentation/screens/add_product_form.screen.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  static const String routeName = 'HomeTab';

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        padding: .all(16),
        children: [
          ListTile(
            contentPadding: .zero,
            title: Text('Recent Note'),
            trailing: TextButton(
              onPressed: () {},
              child: Text('See All'),
            ),
          ),
          Card.outlined(
            margin: .zero,
            child: Column(
              children: [
                ListTile(
                  title: Text('Note 1'),
                  subtitle: Text('This is a note'),
                ),
                ListTile(
                  title: Text('Note 2'),
                  subtitle: Text('This is a note'),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          ListTile(
            contentPadding: .zero,
            title: Text('Products'),
            trailing: TextButton(
              onPressed: () {},
              child: Text('See All'),
            ),
          ),
          MasonryGridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            itemCount: 10,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Card.outlined(
                margin: .zero,
                child: Column(
                  crossAxisAlignment: .stretch,
                  spacing: 8,
                  children: [
                    Image.network(
                      mockImage,
                      fit: .cover,
                      cacheHeight: 150,
                    ),
                    Padding(
                      padding:.symmetric(horizontal: 16),
                      child: Column(
                        spacing: 8,
                        crossAxisAlignment: .stretch,
                        children: [
                          Text('Product $index'),
                          Text('This is a product'),
                        ],
                      ),
                    ),
                    SizedBox.shrink(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pushNamed(AddProductFormScreen.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
