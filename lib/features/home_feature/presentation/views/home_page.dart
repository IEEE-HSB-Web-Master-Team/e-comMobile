import 'package:ecomerce_ieee/features/home_feature/presentation/widgets/brand_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20),
        child: CustomScrollView(
          slivers: [
          SliverToBoxAdapter(child: BrandView())
          ],
        ),
      ),
    );
  }
}
