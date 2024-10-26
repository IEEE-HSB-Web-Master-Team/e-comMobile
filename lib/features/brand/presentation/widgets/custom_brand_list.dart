import 'package:flutter/material.dart';
import 'custom_brand_image.dart';

class CustomBrandList extends StatelessWidget {
  const CustomBrandList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridView.builder(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          childAspectRatio: .75,
        ),
        itemCount: 6,
        itemBuilder: (context, index) {
          return Column(
            children: [
              CustomBrandImage(),
            ],
          );
        },
      ),
    );
  }
}
