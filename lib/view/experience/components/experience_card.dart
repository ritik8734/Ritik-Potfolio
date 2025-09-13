import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../model/experience_model.dart';
import '../../../res/constants.dart';
import '../../../view model/responsive.dart';

class ExperienceCard extends StatelessWidget {
  final int index;
  const ExperienceCard({super.key, required this.index});
  
  @override
  Widget build(BuildContext context) {
    final experience = experienceList[index];
    
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Colors.pinkAccent, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(-2, 0),
            blurRadius: 10,
          ),
          BoxShadow(
            color: Colors.blue,
            offset: Offset(2, 0),
            blurRadius: 10,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: bgColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with company name and status
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    experience.companyName,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: experience.status == 'Current' ? Colors.green : Colors.orange,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    experience.status,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            
            // Role
            Text(
              experience.role,
              style: const TextStyle(
                color: Colors.amber,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            
            // Technology logos for Khan Global Studies
            if (experience.companyName == 'Khan Global Studies') ...[
              Row(
                children: [
                  const Text(
                    'Technologies: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/flutter.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/firebase.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'NestJS',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
            
            // Technology logos for PartyWitty
            if (experience.companyName == 'PartyWitty') ...[
              Row(
                children: [
                  const Text(
                    'Technologies: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/flutter.png',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      'Jetpack Compose',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
            
            // Technology logos for TechDigi
            if (experience.companyName == 'TechDigi Software Pvt Ltd') ...[
              Row(
                children: [
                  const Text(
                    'Technologies: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/flutter.png',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
            
            // Technology logos for Saksham
            if (experience.companyName == 'Saksham Digital Technology') ...[
              Row(
                children: [
                  const Text(
                    'Technologies: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/flutter.png',
                    height: 20,
                    width: 20,
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
            
            // Duration and Location
            Row(
              children: [
                const Icon(Icons.schedule, color: Colors.grey, size: 14),
                const SizedBox(width: 4),
                Text(
                  experience.duration,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
                const SizedBox(width: 16),
                const Icon(Icons.location_on, color: Colors.grey, size: 14),
                const SizedBox(width: 4),
                Expanded(
                  child: Text(
                    experience.location,
                    style: const TextStyle(color: Colors.grey, fontSize: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            
            // Responsibilities
            const Text(
              'Key Responsibilities:',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            
            // Bullet points
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: experience.responsibilities.map((responsibility) => Padding(
                    padding: const EdgeInsets.only(bottom: 6.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 2.0),
                          child: Text('• ', style: TextStyle(color: Colors.amber, fontSize: 12)),
                        ),
                        Expanded(
                          child: Text(
                            responsibility,
                            style: const TextStyle(
                              color: Colors.grey,
                              height: 1.3,
                              fontSize: 11,
                            ),
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  )).toList(),
                ),
              ),
            ),
            
            const SizedBox(height: 12),
            
            // Website link
            InkWell(
              onTap: () => launchUrl(Uri.parse(experience.website)),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Visit Website',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 4),
                  SvgPicture.asset(
                    'assets/icons/github.svg',
                    height: 14,
                    width: 14,
                    colorFilter: const ColorFilter.mode(Colors.amber, BlendMode.srcIn),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
