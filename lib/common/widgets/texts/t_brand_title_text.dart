import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/enums.dart';

class TBrandTitleText extends StatelessWidget {
  const TBrandTitleText({
    super.key, 
    required this.title, 
    this.color, 
    this.maxLines = 1, 
    this.textAlign = TextAlign.center, 
    this.brandTextSize = TextSizes.small
    });

  final String title;
  final Color? color;
  final int maxLines;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      
      // Check which brandSize is required and set that style
      style: brandTextSize == TextSizes.small 
      ? Theme.of(context).textTheme.labelMedium!.apply(color: color)
      : brandTextSize == TextSizes.small
      ? Theme.of(context).textTheme.bodyLarge!.apply(color: color)
      : brandTextSize == TextSizes.small
          ? Theme.of(context).textTheme.titleLarge!.apply(color: color)
          : Theme.of(context).textTheme.bodyMedium!.apply(color: color)
     
    );
  }
}