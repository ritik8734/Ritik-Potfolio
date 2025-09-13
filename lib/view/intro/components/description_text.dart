import 'package:flutter/material.dart';

import '../../../view model/responsive.dart';

class AnimatedDescriptionText extends StatelessWidget {
  const AnimatedDescriptionText(
      {super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: start, end: end),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Container(
          width: double.infinity,
          child: Text(
            'Full Stack Flutter Developer with 3 years of experience specializing in cross-platform development, backend APIs, and database management. Skilled in building high-performance, user-friendly apps with Bloc/GetX state management, NestJS backend development, MongoDB integration, payment gateways, and video streaming.',
            maxLines: Responsive.isMobile(context) ? 3 : 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: TextStyle(
              color: Colors.grey, 
              wordSpacing: 1.5, 
              fontSize: value,
              height: 1.4,
            ),
          ),
        );
      },
    );
  }
}