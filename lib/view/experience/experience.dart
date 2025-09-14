import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view model/responsive.dart';
import 'package:flutter_portfolio/view/experience/components/experience_grid.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isLargeMobile(context))const SizedBox(
            height: defaultPadding,
          ),
          const TitleText(prefix: 'Work', title: 'Experience'),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
              child: Responsive(
                  desktop: ExperienceGrid(crossAxisCount: 2, ratio: 1.8),
                  extraLargeScreen: ExperienceGrid(crossAxisCount: 3, ratio: 1.6),
                  largeMobile: ExperienceGrid(crossAxisCount: 1, ratio: 2.2),
                  mobile: ExperienceGrid(crossAxisCount: 1, ratio: 2.0),
                  tablet: ExperienceGrid(ratio: 1.9, crossAxisCount: 1,)))
        ],
      ),
    );
  }
}



