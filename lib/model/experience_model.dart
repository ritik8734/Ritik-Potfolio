class ExperienceModel {
  final String companyName;
  final String role;
  final String duration;
  final String location;
  final String website;
  final List<String> responsibilities;
  final String status; // "Current" or "Previous"

  ExperienceModel({
    required this.companyName,
    required this.role,
    required this.duration,
    required this.location,
    required this.website,
    required this.responsibilities,
    required this.status,
  });
}

List<ExperienceModel> experienceList = [
  ExperienceModel(
    companyName: 'Khan Global Studies',
    role: 'Software Developer',
    duration: 'Jan 2014 - Present',
    location: 'Noida',
    website: 'https://www.khanglobalstudies.com',
    status: 'Current',
    responsibilities: [
      'Developed an education app with video player integration, in-app downloads, secure payment gateway, and complex quiz modules',
      'Implemented custom video streaming with offline playback and adaptive quality',
      'Integrated Cashfree/Razorpay payment gateway for wallet top-up and course purchases',
      'Built dynamic quiz system with sectional timers, scoring logic, and leaderboard functionality',
      'Worked on backend APIs using NestJS and MongoDB for authentication, payments, and quiz management',
      'Collaborated with cross-functional teams for scalable and user-friendly solutions'
    ],
  ),
  ExperienceModel(
    companyName: 'PartyWitty',
    role: 'App Developer',
    duration: 'May 2023 - Dec 2023',
    location: 'Noida',
    website: 'https://www.partywitty.com',
    status: 'Previous',
    responsibilities: [
      'Created an event management app for booking beverages and dinner services with smooth checkout',
      'Integrated multiple payment gateways for secure and flexible transactions',
      'Designed and implemented user-friendly UI/UX for booking, event browsing, and order tracking'
    ],
  ),
  ExperienceModel(
    companyName: 'TechDigi Software Pvt Ltd',
    role: 'Junior Flutter Developer',
    duration: 'Oct 2022 - Mar 2023',
    location: 'Bhopal, MP',
    website: 'https://techdigisoftware.com',
    status: 'Previous',
    responsibilities: [
      'Contributed to development of education app with video player, in-app downloads, payment gateway, and quiz system',
      'Worked on event management app, assisting in building booking flows for beverages and dinner services',
      'Implemented UI screens in Flutter with responsive design and smooth user experience',
      'Gained experience in cross-platform mobile development'
    ],
  ),
  ExperienceModel(
    companyName: 'Saksham Digital Technology',
    role: 'Flutter Developer Intern',
    duration: 'Apr 2022 - Sep 2022',
    location: 'Bhopal, MP',
    website: 'https://sakshamdigitaltechnology.com/',
    status: 'Previous',
    responsibilities: [
      'Assisted in developing mobile apps in Flutter, contributing to UI screens, navigation, and API integration',
      'Gained hands-on experience in video player integration, payment gateway setup, and in-app downloads',
      'Worked on event management app, assisting in building booking flows for beverages and dinner services',
      'Collaborated with senior developers on backend APIs using NestJS and MongoDB for authentication and payment modules',
      'Learned industry practices such as Git version control, code reviews, debugging, and performance optimization'
    ],
  ),
];
