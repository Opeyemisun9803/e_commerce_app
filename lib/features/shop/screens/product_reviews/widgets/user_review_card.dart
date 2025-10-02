import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/images/rounded_container.dart';
import 'package:t_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
               const CircleAvatar(backgroundImage: AssetImage(TImages.userProfileImage1)),
                const  SizedBox(height: TSizes.spaceBtwItems),
                Text('Opeyemi', style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const  SizedBox(height: TSizes.spaceBtwItems),

        // Review
        Row(
          children: [
            const  TRatingBarIndicator(rating: 4),
            const  SizedBox(width: TSizes.spaceBtwItems),
            Text('27 Sept, 2025', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const  SizedBox(width: TSizes.spaceBtwItems),
        const ReadMoreText(
          'sjfdlaksdflsasmdfnljkabfdjbjirfnvjnjifka;fnavlfnaksdfnvlqnfv,ldfm;o',
           trimLines: 2,
           trimMode: TrimMode.Line,
           trimExpandedText: 'show less',
           trimCollapsedText: 'show more',
           moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
           lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
        ),
        const  SizedBox(width: TSizes.spaceBtwItems),

        // company review
        TRoundedContaner(
          backgroundColor: dark  ? TColors.darkGrey : TColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(TSizes.md),
             child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("T's Store", style: Theme.of(context).textTheme.titleMedium),
                      Text('27 Sept, 2025', style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
               const  SizedBox(height: TSizes.spaceBtwItems),
               const ReadMoreText(
                'sjfdlaksdflsasmdfnljkabfdjbjirfnvjnjifka;fnavlfnaksdfnvlqnfv,ldfm;o',
                 trimLines: 2,
                 trimMode: TrimMode.Line,
                 trimExpandedText: 'show less',
                 trimCollapsedText: 'show more',
                 moreStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
                 lessStyle:  TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: TColors.primary),
               ),
             ],
           ),
         ),
        ),
        const  SizedBox(height: TSizes.spaceBtwSections),
      ],
    );
  }
}