class Promotions {
  Promotions({
    this.title = '',
    this.imagePath = '',
    this.lessonCount = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  String title;
  int lessonCount;
  int money;
  double rating;
  String imagePath;

  static List<Promotions> PromotionsList = <Promotions>[
    Promotions(
      imagePath: 'assets/images/interFace1.png',
      title: 'Home Cleaning Services',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Promotions(
      imagePath: 'assets/images/interFace2.png',
      title: 'Home Cleaning Services',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Promotions(
      imagePath: 'assets/images/interFace1.png',
      title: 'Home Cleaning Services',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Promotions(
      imagePath: 'assets/images/interFace2.png',
      title: 'Home Cleaning Services',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Promotions(
      imagePath: 'assets/images/interFace1.png',
      title: 'Home Cleaning Services',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Promotions(
      imagePath: 'assets/images/interFace2.png',
      title: 'Home Cleaning Services',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
    Promotions(
      imagePath: 'assets/images/interFace1.png',
      title: 'Home Cleaning Services',
      lessonCount: 24,
      money: 25,
      rating: 4.3,
    ),
    Promotions(
      imagePath: 'assets/images/interFace2.png',
      title: 'Home Cleaning Services',
      lessonCount: 22,
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Promotions> popularCourseList = <Promotions>[
    Promotions(
      imagePath: 'assets/images/interFace3.png',
      title: 'Plumbing Reparation',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Promotions(
      imagePath: 'assets/images/interFace4.png',
      title: 'Rooftop Restoration',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
    Promotions(
      imagePath: 'assets/images/interFace3.png',
      title: 'Plumbing Reparation',
      lessonCount: 12,
      money: 25,
      rating: 4.8,
    ),
    Promotions(
      imagePath: 'assets/images/interFace4.png',
      title: 'Rooftop Restoration',
      lessonCount: 28,
      money: 208,
      rating: 4.9,
    ),
  ];
}
