import 'package:ecomerce_ieee/features/brand/presentation/widgets/custom_brand_list.dart';
import 'package:flutter/material.dart';

import '../widgets/text_header.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: TextHeader()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomBrandList(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 26,
                ),
              ),
              const SliverToBoxAdapter(
                child: CustomBrandList(),
              ),
            ],
          ),
        ));
  }
}
