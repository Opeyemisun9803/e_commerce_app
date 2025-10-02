import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/texts/section_heading.dart';
import 'package:t_store/utils/constants/sizes.dart';

class TBilingAddressSection extends StatelessWidget {
  const TBilingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(title: 'Shipping Address', buttonTitle: 'Change', onPressed: (){}),
        Text('Coding with T', style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: TSizes.spaceBtwItems/2),

        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey,size: 16),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text('08148130903', style: Theme.of(context).textTheme.bodyLarge),
          ],
        ),
        
        const SizedBox(height: TSizes.spaceBtwItems/2),
          Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey,size: 16),
            const SizedBox(height: TSizes.spaceBtwItems),
            Expanded(child: Text('Iyana Church, Ibadan, Nigeria', style: Theme.of(context).textTheme.bodyMedium, softWrap: true,)),
          ],
        ),
      ],
    );
  }
}