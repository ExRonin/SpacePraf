import 'package:equatable/equatable.dart';

//The following contains the information for the Articles part of the application
class Article extends Equatable {
  final String id; // Unique identifier for the article
  final String title; // Title of the article
  final String subtitle; // Subtitle or additional details about the article
  final String body; // Full content of the article
  final String author; // Author's name or contributor
  final String authorImageUrl; // URL of the author's image
  final String category; // Category or type of the article
  final String imageUrl; // URL of an image associated with the article
  final int views; // Number of views for the article
  final DateTime createdAt; // Timestamp indicating when the article was created

// Constructor to initialize an Article object
  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

// List of sample articles for demonstration
  static List<Article> articles = [
    Article(
      id: '1',
      title: 'FALCON 1',
      subtitle: 'SEPTEMBER 2008',
      body:
          'Falcon 1 becomes the first privately developed liquid fuel rocket to reach Earth orbit. \nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Rocket',
      views: 1204,
      imageUrl: './assets/images/falcon1.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    Article(
      id: '2',
      title: 'Dragon',
      subtitle: 'MAY 2012',
      body:
          'Dragon becomes the first private spacecraft in history to visit the space station. \nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Space',
      views: 1204,
      imageUrl: './assets/images/dragon.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
    ),
    Article(
      id: '3',
      title: 'First Land',
      subtitle: 'DECEMBER 2015',
      body:
          'On December 21, 2015, the Falcon 9 rocket delivered 11 communications satellites to orbit, and the first stage returned and landed at Landing Zone 1 — the first-ever orbital class rocket landing. \nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Landing',
      views: 1204,
      imageUrl: './assets/images/land.webp',
      createdAt: DateTime.now().subtract(const Duration(hours: 8)),
    ),
    Article(
      id: '4',
      title: 'Droneship Landing',
      subtitle: 'APRIL 2016',
      body:
          'On April 8, 2016, the Falcon 9 rocket launched the Dragon spacecraft to the International Space Station, and the first stage returned and landed on the “Of Course I Still Love You” droneship.\nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Landing',
      views: 1204,
      imageUrl: './assets/images/mars1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 9)),
    ),
    Article(
      id: '5',
      title: 'First Reflight mission',
      subtitle: 'MARCH 2017',
      body:
          'On March 30, 2017, SpaceX achieved the world’s first reflight of an orbital class rocket. Following delivery of the payload, the Falcon 9 first stage returned to Earth for the second time.\nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Lunar',
      views: 1204,
      imageUrl: './assets/images/reflight.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 10)),
    ),
    Article(
      id: '5',
      title: 'FALCON HEAVY FIRST FLIGHT',
      subtitle: 'FEBRUARY 2018',
      body:
          'On February 7, 2018, Falcon Heavy made its first launch to orbit, successfully landing 2 of its 3 boosters and launching its payload to space. With more than 5 million pounds of thrust at liftoff, Falcon Heavy is one of the most capable rockets flying. By comparison, the liftoff thrust of the Falcon Heavy equals approximately eighteen 747 aircraft at full power. Falcon Heavy can lift the equivalent of a fully loaded 737 jetliner—complete with passengers, luggage and fuel—to orbit.\nSpaceX believes a fully and rapidly reusable rocket is the pivotal breakthrough needed to substantially reduce the cost of space access. The majority of the launch cost comes from building the rocket, which historically has flown only once.\nCompare that to a commercial airliner – each new plane costs about the same as Falcon 9 but can fly multiple times per day and conduct tens of thousands of flights over its lifetime. Following the commercial model, a rapidly reusable space launch vehicle could reduce the cost of traveling to space by a hundredfold.\nWhile most rockets are designed to burn up on reentry, SpaceX rockets can not only withstand reentry but can also successfully land back on Earth and refly again.\nSpaceX’s family of Falcon launch vehicles are the first and only orbital class rockets capable of reflight. Depending on the performance required for the mission, Falcon lands on one of our autonomous spaceport droneships out on the ocean or one of our landing zones near our launch pads..',
      author: '',
      authorImageUrl: '',
      category: 'Astronomy',
      views: 1204,
      imageUrl: './assets/images/falconheavy.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 11)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        createdAt,
      ];
}
