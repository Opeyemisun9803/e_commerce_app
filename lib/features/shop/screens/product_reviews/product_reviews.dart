import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/products/ratings/rating_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:t_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // AppBar
      appBar: const TAppBar(title: Text('Review & Ratings'), showBackArrow: true,),

      // Body
      body: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const  Text('sjfgksdmakosdmaksjfnjnfv j  ioksdam ckma kod jkjfdakmcaokcd kasscnkoamcokmakodsmakosm aokdm akodm a;omsd ;akomcda odmc;aomc ;amd;a kmv;aklmvl'),
          const  SizedBox(height: TSizes.spaceBtwItems),

            // overall product ratings
           const TOverallProductRating(),    

           const TRatingBarIndicator(rating: 3.5),
            Text("12,611", style: Theme.of(context).textTheme.bodySmall),
            const  SizedBox(height: TSizes.spaceBtwSections),

            // user reviews list
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),
            
           
             ],
         ),
        ),
      ),
    );
  }
}




