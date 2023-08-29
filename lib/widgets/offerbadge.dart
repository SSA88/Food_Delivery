import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../resources/assets/images.dart';
import '../resources/constants/color.dart';
import '../resources/constants/dimensions.dart';
import 'component/text_widget.dart';

class OfferCard extends StatefulWidget {
  const OfferCard({super.key});

  @override
  State<OfferCard> createState() => _OfferCardState();
}

class _OfferCardState extends State<OfferCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: Dimensions.dimen20,right: Dimensions.dimen5),
      decoration: BoxDecoration(
        color: AppColor.greenColor,
        borderRadius: BorderRadius.circular(36),
        boxShadow: [
          BoxShadow(
            color: AppColor.greenColor.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(1, 2),
          ),
        ]
      ),
      child: Row(
        children: [
           const Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(title: "30%",fontSize: 45,titleColor: AppColor.whiteColor,fontWeight: FontWeight.bold,),
              TextWidget(title: "DISCOUNT ONLY ",fontSize: 24,titleColor: AppColor.whiteColor,fontWeight: FontWeight.bold,),
              TextWidget(title: "VALID FOR TODAY",fontSize: 24,titleColor: AppColor.whiteColor,fontWeight: FontWeight.bold,),
            ],
          ),
          const Spacer(),

          Container(
            padding: const EdgeInsets.only(top: Dimensions.dimen27,),
            height: Dimensions.dimen160,
            width: Dimensions.dimen130,
            child: Image.asset(Images.burger,)
          ),

        ],
      ),
    );
  }
}