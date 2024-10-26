import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';

class CustomBrandImage extends StatelessWidget {
  const CustomBrandImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              width: 100,
              height: 100,
              child: Image.asset(
                'lib/core/assets/images/image_brand.png',
                fit: BoxFit.cover,
              )),
          const SizedBox(
            height: 8,
          ),
          Text(
            'Women’s\nfashion',
            style: AppStyle.style14,
          ),
        ],
      ),
    );
  }
}
