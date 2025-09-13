class Project {
  final String name;
  final String description;
  final String image;
  final String link;
  final List<String> bulletPoints;
  Project(this.name, this.description, this.image, this.link, this.bulletPoints);
}

List<Project> projectList = [
  Project(
    'Khan Global Studies Education App',
    'Comprehensive education platform with advanced video streaming and payment integration',
    'assets/images/coffee.png',
    'https://www.khanglobalstudies.com',
    [
      'Custom video player with offline playback capabilities',
      'Adaptive quality streaming for optimal user experience',
      'Integrated Cashfree/Razorpay payment gateways',
      'Complex quiz modules with sectional timers',
      'Secure wallet top-up and course purchase system',
      'Real-time progress tracking and analytics'
    ],
  ),
  Project(
    'PartyWitty Event Management App',
    'Event management platform for booking beverages and dinner services',
    'assets/images/car.png',
    'https://www.partywitty.com',
    [
      'Smooth checkout process for event bookings',
      'Multiple payment gateway integration',
      'User-friendly UI/UX for booking and browsing',
      'Real-time order tracking system',
      'Beverage and dinner service management',
      'Secure transaction processing'
    ],
  ),
  Project(
      'HLS Video Player with hls_proplayer',
      'Advanced video streaming solution with HLS support and custom controls',
      'assets/images/alarm.jpg',
      'https://pub.dev/packages/hls_proplayer',
      [
        'HLS (.m3u8) live and recorded stream support',
        'Video quality switching and adaptive streaming',
        'Custom controls and UI customization',
        'Playback speed control and fullscreen handling',
        'Offline MP4 playback with zoom support',
        'Token authentication for secure streaming'
      ]),
  Project(
      'Custom Flutter Plugin - pub.dev',
      'Published Flutter plugin demonstrating advanced development skills',
      'assets/images/player.png',
      'https://pub.dev/packages',
      [
        'Created reusable Flutter plugin for developers',
        'Published on pub.dev with proper documentation',
        'Advanced Dart programming and package management',
        'Adherence to pub.dev publishing standards',
        'Open source contribution to Flutter community',
        'Comprehensive testing and version management'
      ]),
  Project(
      'Payment Gateway Integration',
      'Comprehensive payment solution supporting multiple gateways',
      'assets/images/cui.png',
      'https://github.com/ritikkumar4005086',
      [
        'Multiple payment gateway integration (Cashfree, Razorpay)',
        'Secure wallet top-up and course purchases',
        'Subscription management system',
        'Payment history and transaction tracking',
        'Refund handling and dispute management',
        'Advanced security and fraud prevention'
      ]),
  Project(
      'Quiz Management System',
      'Dynamic quiz platform with advanced scoring and analytics',
      'assets/images/player.png',
      'https://github.com/ritikkumar4005086',
      [
        'Sectional timers and scoring logic',
        'Real-time leaderboard functionality',
        'NestJS and MongoDB backend integration',
        'Real-time scoring and progress tracking',
        'Comprehensive analytics and reporting',
        'User performance insights and statistics'
      ]),
  Project(
      'NestJS Backend APIs',
      'Robust backend services with authentication and payment processing',
      'assets/images/recipe.png',
      'https://github.com/ritikkumar4005086',
      [
        'NestJS framework with MongoDB integration',
        'Authentication and authorization services',
        'Payment processing and quiz management APIs',
        'RESTful API design with proper error handling',
        'Input validation and security measures',
        'Cross-functional team collaboration'
      ]),
  Project(
      'Cross-Platform Mobile Apps',
      'High-performance mobile applications with modern architecture',
      'assets/images/task.png',
      'https://github.com/ritikkumar4005086',
      [
        'Flutter with Bloc/GetX state management',
        'Responsive design for various screen sizes',
        'Clean architecture and code organization',
        'Performance optimization and memory management',
        'End-to-end product delivery',
        'Cross-platform compatibility'
      ]),
  Project(
      'Jetpack Compose Android Apps',
      'Native Android applications with modern UI development',
      'assets/images/chat.png',
      'https://github.com/ritikkumar4005086',
      [
        'Jetpack Compose for modern UI development',
        'Material Design principles implementation',
        'Smooth and responsive user interfaces',
        'Performance optimization techniques',
        'Native Android development best practices',
        'Modern Android architecture patterns'
      ]),
  Project(
      'Event Booking Platform',
      'Comprehensive event management with booking and payment processing',
      'assets/images/doctor.png',
      'https://github.com/ritikkumar4005086',
      [
        'Event booking flows for beverages and dinner services',
        'User authentication and profile management',
        'Booking management and scheduling system',
        'Payment processing and order tracking',
        'Flutter frontend with backend integration',
        'Real-time notifications and updates'
      ]),
];
