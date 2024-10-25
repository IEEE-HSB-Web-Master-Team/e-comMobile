import 'package:ecomerce_ieee/core/utils/app_color.dart';
import 'package:ecomerce_ieee/features/brand/presentation/widgets/custom_brand_list.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_style.dart';

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
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: AppStyle.style18
                            .copyWith(color: AppColor.brandTextColor),
                      ),
                      Text(
                        "See All",
                        style: AppStyle.style12,
                      )
                    ],
                  ),
                ),
              ),
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
