import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/experience/components/experience_card.dart';
import '../../../model/experience_model.dart';
import '../../../res/constants.dart';

class ExperienceGrid extends StatelessWidget {
  final int crossAxisCount;
  final double ratio;
  ExperienceGrid({super.key, this.crossAxisCount = 2, this.ratio = 1.8});
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      itemCount: experienceList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount, childAspectRatio: ratio),
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(
              vertical: defaultPadding, horizontal: defaultPadding),
          child: ExperienceCard(index: index),
        );
      },
    );
  }
}



