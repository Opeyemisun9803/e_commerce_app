import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/cards/choice_chip.dart';
import 'package:t_store/common/widgets/images/rounded_container.dart';
import 'package:t_store/common/widgets/products/product_cards/product_price_text.dart';
import 'package:t_store/common/widgets/texts/product_title_text.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TProductAttributes extends StatelessWidget {
  const TProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return  Column(
      children: [
        // selected attribute pricing & description
        TRoundedContaner(
          backgroundColor: dark ? TColors.darkerGrey : TColors.grey,
          child:  Column(
            children: [
              // title, price, & stock staus
              Row(
                children: [
                 const TSectionHeading(title: 'Veriation', showActionButton: false),
                 const SizedBox(width: TSizes.spaceBtwItems),

                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                        Row(
                    children: [
                     const TProductTitleText(title: 'Price : ', smallSize: true),
                    //  const SizedBox(width: TSizes.spaceBtwItems),

                      // Actual price
                      Text('\$25', style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough)),
                      const SizedBox(width: TSizes.spaceBtwItems),

                      // Sale price
                     const TProductPriceText(price: '20'),
                    ],
                  ),

                 // stock (vedio 23 8min,30sec)
                 Row(
                   children: [
                         const TProductTitleText(title: 'Stock : ', smallSize: true),
                         Text('\$25', style: Theme.of(context).textTheme.titleMedium),
                      ],
                     ) 
                   ],
                 ),
                ],
              ),

              // Variation
             const TProductTitleText(
                title: 'This is the production of the products and it can go upto 4 lines',
                smallSize: true, maxLines: 4,

                )
               
            ],
          ),

        ),
        const SizedBox(height: TSizes.spaceBtwItems),

        // Attributes
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TSectionHeading(title: 'Colors',showActionButton: false,),
            const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'Green', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Blue', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Yellow', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Orange', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Red', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Purple', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Gold', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'Pink', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'Grey', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),

       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const TSectionHeading(title: 'Sizes'),
           const SizedBox(width: TSizes.spaceBtwItems / 2),
            Wrap(
              spacing: 8,
              children: [
                TChoiceChip(text: 'EU 34', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 36', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 38', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 40', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 42', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 44', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 46', selected: true, onSelected: (value){}),
                TChoiceChip(text: 'EU 48', selected: false, onSelected: (value){}),
                TChoiceChip(text: 'EU 50', selected: false, onSelected: (value){}),
              ],
            )
          ],
        )
      ],
    );
  }
}

