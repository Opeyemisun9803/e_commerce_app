import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/shop/screens/product_details/product_detail_image_slider.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/bottom_add_to_cart_widget.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:t_store/features/shop/screens/product_details/widgets/rating_share_widge.dart';
import 'package:t_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final dark = THelperFunctions.isDarkMode(context);
    return   Scaffold(
      bottomNavigationBar: const TBottomAddToCartWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
              // product image slider
             const TProductImageSlider(),
          

          // product details (Video 22, 15min)
          Padding(
            padding:const  EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace, bottom: TSizes.defaultSpace),
            child: Column(
              children: [
                // rating and share button
               const TRaingAndShare(),

                // price, title, stock & brand
               const TProductMetaData(),

                // attribute
               const TProductAttributes(),
               const SizedBox(height: TSizes.spaceBtwSections),

                // check out button
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: const Text('Checkout'))),
                const SizedBox(height: TSizes.spaceBtwSections), 

                // description
                const TSectionHeading(title: 'Description', showActionButton: false,),
                const SizedBox(height: TSizes.spaceBtwItems),
                const ReadMoreText(
                  'KDFJADNAKLNDLANSDFJOAJFNK;kkKA;K;kmga;l,fmgafmg ;akmf;ksm;fvk ;kofgm;kofg akonf g;jko;n gjogan ;fgkoa;fkmga ;mfgnsklfnlsknflmflksnmfg.mnf.mnfkmnlksdfna lmfn klnfd; mdfklmdfklna mldfvn;a,dvm;oamkv',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show More',
                  trimExpandedText: 'Show Less',
                  moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                ),

                // reviews
                const Divider(),
                const SizedBox(height: TSizes.spaceBtwItems),
                Row(
                  children: [
                    const TSectionHeading(title: 'Review(199)', showActionButton: false,),
                    IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,), onPressed: () => Get.to(() => const ProductReviewsScreen())),
                  ],
                ),
                const SizedBox(height: TSizes.spaceBtwSections),
              ],
            ),
           )
          ],    
        ),
      ),
    );
  }
}



