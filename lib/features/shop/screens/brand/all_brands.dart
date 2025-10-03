import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/cards/brand_card.dart';
import 'package:t_store/common/widgets/layout/grid_laout.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/brand/brand_products.dart';
import 'package:t_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar:const TAppBar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding:const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [

              // Heading
              const  TSectionHeading(title: 'Brands'),
              const  SizedBox(height: TSizes.spaceBtwItems),

              // Brands
              TGridLayout(itemCount: 11, mainAxisExtent: 80, 
              itemBuilder: (context, index) => TBrandCard(showBorder: true,
              onTap: () => Get.to(() => const BrandProducts()))
              )
                
            ],
          ),
        ),
      ),
    );
  }
}