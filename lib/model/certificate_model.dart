class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Flutter Development Bootcamp',
    organization: 'Google',
    date: 'JAN 2022',
    skills: 'Flutter . Dart . Cross-platform',
    credential:  'https://flutter.dev/certificates',
  ),
  CertificateModel(
    name: 'Android Development with Kotlin',
    organization: 'Google',
    date: 'MAR 2022',
    skills: 'Android . Kotlin . Jetpack Compose',
    credential:  'https://developer.android.com/certificates',
  ),
  CertificateModel(
    name: 'Complete Flutter & Dart Development',
    organization: 'Udemy',
    date: 'JUN 2022',
    skills: 'Flutter . Dart . Mobile Development',
    credential:  'https://www.udemy.com/certificate/UC-flutter-dart/',
  ),
  CertificateModel(
    name: 'NestJS Backend Development',
    organization: 'NestJS',
    date: 'AUG 2022',
    skills: 'NestJS . Node.js . TypeScript . APIs',
    credential:  'https://nestjs.com/certificates',
  ),
  CertificateModel(
    name: 'MongoDB Developer Certification',
    organization: 'MongoDB',
    date: 'SEP 2022',
    skills: 'MongoDB . Database . NoSQL',
    credential:  'https://university.mongodb.com/certification',
  ),
  CertificateModel(
    name: 'Payment Gateway Integration',
    organization: 'Razorpay',
    date: 'OCT 2022',
    skills: 'Payment Processing . Razorpay . Cashfree',
    credential:  'https://razorpay.com/certificates',
  ),
  CertificateModel(
    name: 'Video Streaming Technologies',
    organization: 'AWS',
    date: 'NOV 2022',
    skills: 'Video Streaming . AWS . Cloud',
    credential:  'https://aws.amazon.com/certificates',
  ),
  CertificateModel(
    name: 'State Management with GetX',
    organization: 'GetX',
    date: 'DEC 2022',
    skills: 'GetX . State Management . Flutter',
    credential:  'https://getx.dev/certificates',
  ),
  CertificateModel(
    name: 'Clean Architecture in Flutter',
    organization: 'Flutter Community',
    date: 'JAN 2023',
    skills: 'Clean Architecture . Flutter . Best Practices',
    credential:  'https://flutter.dev/community',
  ),
  CertificateModel(
    name: 'RESTful API Design',
    organization: 'Coursera',
    date: 'FEB 2023',
    skills: 'REST APIs . Backend . Integration',
    credential:  'https://coursera.org/certificates',
  ),
  CertificateModel(
    name: 'Mobile App Security',
    organization: 'OWASP',
    date: 'MAR 2023',
    skills: 'App Security . OWASP . Mobile Security',
    credential:  'https://owasp.org/certificates',
  ),









];
