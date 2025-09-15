import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/cards/brand_card.dart';
import 'package:t_store/common/widgets/images/rounded_container.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TBrandShowcase extends StatelessWidget {
  const TBrandShowcase({
    super.key, required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return TRoundedContaner(
      showBorder: true,
      borderColor: TColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(TSizes.sm),
      margin:const  EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
    
          // Brands with Product count
         const TBrandCard(showBorder: false),
         const SizedBox(height: TSizes.spaceBtwItems),
    
          // Brands with top 3
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
            
          )
        ],
      ),
    );
  }
}

Widget brandTopProductImageWidget(String image, context) {
  return Expanded(
     child: TRoundedContaner(
     height: 100,
     backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
     margin: const EdgeInsets.only(right: TSizes.sm),
     padding: const EdgeInsets.all(TSizes.sm),
     child:  Image(fit: BoxFit.contain, image: AssetImage(image)),
    ),
  );
}
