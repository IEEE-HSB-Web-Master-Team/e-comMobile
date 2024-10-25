import 'package:flutter/material.dart';

import 'custom_brand_image.dart';

class CustomBrandList extends StatelessWidget {
  const CustomBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(7, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                CustomBrandImage(),
                SizedBox(
                  height: 16,
                ),
                CustomBrandImage(),
              ],
            ),
          );
        }),
      ),
    );
  }
}
