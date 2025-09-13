import 'package:flutter/material.dart';

import '../../../../res/constants.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  const AnimatedLinearProgressIndicator({super.key, required this.percentage, required this.title, this.image});
  final double percentage;
  final String title;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(bottom: defaultPadding/2),
      child: TweenAnimationBuilder(tween: Tween(begin: 0.0,end: percentage), duration: const Duration(seconds: 1), builder: (context, value, child) {
        return Column(
          children: [
            Row(
              children: [
                Image.asset(image!,height: 15,width: 15,fit: BoxFit.cover,),
                const SizedBox(width: 5,),
                Expanded(
                  child: Text(title,style: const TextStyle(color: Colors.white),),
                ),
                Text('${(value*100).toInt().toString()}%', style: const TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: defaultPadding/3,),
            LinearProgressIndicator(
              value: value,
              backgroundColor: Colors.black,
              color: Colors.amberAccent,
            ),
          ],
        );
      },),
    );
  }
}

class MySKills extends StatelessWidget {
  const MySKills({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedLinearProgressIndicator(percentage: 0.95, title: 'Flutter',image: 'assets/icons/flutter.png',),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Dart',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(percentage: 0.85, title: 'Jetpack Compose',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(percentage: 0.8, title: 'NestJS',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'JavaScript',image: 'assets/icons/dart.png'),
        AnimatedLinearProgressIndicator(percentage: 0.85, title: 'MongoDB',image: 'assets/icons/firebase.png'),
        AnimatedLinearProgressIndicator(percentage: 0.8, title: 'Bloc/GetX',image: 'assets/icons/bloc.png'),
        AnimatedLinearProgressIndicator(percentage: 0.9, title: 'Payment Gateways',image: 'assets/icons/check.svg'),
      ],);
  }
}
