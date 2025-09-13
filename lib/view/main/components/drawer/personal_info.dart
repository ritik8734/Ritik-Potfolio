import 'package:flutter/material.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: defaultPadding/2,),
        AreaInfoText(title: 'Contact', text: '+91-XXXXXXXXXX'),
        AreaInfoText(title: 'Email', text: 'ritikkumar4005086@gmail.com'),
        AreaInfoText(title: 'LinkedIn', text: '@ritik-kumar'),
        AreaInfoText(title: 'Github', text: '@ritikkumar4005086'),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Education',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        SizedBox(height: defaultPadding/2,),
        Text('Masters in Computer Application\nTechnocrate Institute (2023-2025)\nCGPA: 7.0/10', style: TextStyle(color: Colors.grey, fontSize: 12),),
        SizedBox(height: defaultPadding/2,),
        Text('B.Tech in Civil Engineering\nTechnocrate Institute (2019-2023)\nCGPA: 8.2/10', style: TextStyle(color: Colors.grey, fontSize: 12),),
        SizedBox(
          height: defaultPadding,
        ),
        Text('Skills',style: TextStyle(color: Colors.white),),
        SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
