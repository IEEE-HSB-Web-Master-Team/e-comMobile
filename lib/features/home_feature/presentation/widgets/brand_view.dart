import 'package:ecomerce_ieee/features/home_feature/presentation/widgets/custom_brand_list.dart';
import 'package:flutter/material.dart';

import '../widgets/text_header.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextHeader(),
        SizedBox(
          height: 16,
        ),
        CustomBrandList(),
      ],
    );

  }
}
