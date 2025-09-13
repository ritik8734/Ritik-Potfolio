// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// import '../../../model/project_model.dart';
//
// class ProjectLinks extends StatelessWidget {
//   final int index;
//   const ProjectLinks({super.key, required this.index});
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         const Text('Check on ',style: TextStyle(color: Colors.white, fontSize: 12)),
//         TextButton(
//           onPressed: () {
//             launchUrl(Uri.parse(projectList[index].link));
//           },
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text('GitHub', style: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold, fontSize: 12)),
//               const SizedBox(width: 4),
//               SvgPicture.asset('assets/icons/github.svg', height: 16, width: 16),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
