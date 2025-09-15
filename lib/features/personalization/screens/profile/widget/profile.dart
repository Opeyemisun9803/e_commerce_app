import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/common/widgets/appbar/appbar.dart';
import 'package:t_store/common/widgets/images/t_circular_image.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:t_store/utils/constants/image_strings.dart';
import 'package:t_store/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(showBackArrow: true, title: Text('Profile')),

      // Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Profile picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(image: TImages.user, width: 80, height: 80),
                    TextButton(onPressed: (){}, child: const Text('Change profile picture')),
                  ],
                ),
              ),

              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Heading profile info
              const TSectionHeading(title: 'Profile information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title:'Name', value: 'OLuwadre Opeyemi', onPressed: (){}),
              TProfileMenu(title:'Username', value: 'Opeyemi9803.', onPressed: (){}),

              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),


              // Haeding personal information
              const TSectionHeading(title: 'Profile information',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems),

              TProfileMenu(title:'User ID', value: '48930', icon: Iconsax.copy, onPressed: (){}),
              TProfileMenu(title:'E-Mail', value: 'ups_opeyemi@yahoo.com', onPressed: (){}),
              TProfileMenu(title:'Phone Number', value: '08148139803', onPressed: (){}),
              TProfileMenu(title:'Gender', value: 'Male', onPressed: (){}),
              TProfileMenu(title:'Date of Birth', value: '27th Sept, 2010', onPressed: (){}),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),

              Center(child: TextButton(onPressed: (){}, child: const Text('Close Account', style: TextStyle(color: Colors.red),)))
              


            ],
          ),
          ),
      ),
    );
  }
}

