import 'package:equatable/equatable.dart';

// A class representing news articles with various properties
class News extends Equatable {
  final String id; // Unique identifier for the news
  final String title; // Title of the news article
  final String subtitle; // Subtitle or summary of the news
  final String body; // Full text of the news article
  final String author; // Author's name
  final String authorImageUrl; // URL of the author's image
  final String category; // Category or topic of the news
  final String imageUrl; // URL of the news article's image
  final int views; // Number of views for the news article
  final DateTime createdAt; // Timestamp indicating when the news was created

// Constructor to initialize a News object
  const News({
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

// List of sample news articles for demonstration
  static List<News> news = [
    News(
      id: '1',
      title: 'crew of Ax-3',
      subtitle: '',
      body:
          'Meet the crew of Ax-3, the third Axiom Space mission Falcon 9 will launch to the @space_station.Excited to train and fly this crew aboard Dragon!',
      author: '',
      authorImageUrl: '',
      category: 'Team',
      views: 1204,
      imageUrl: './assets/images/ax.png',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
    ),
    News(
      id: '2',
      title: 'Telesat Lightspeed satellites',
      subtitle: '',
      body:
          'Great News!Telesat Lightspeed satellites will be launched into orbit by @SpaceX their Falcon 9 rocket. The launches are scheduled to begin in 2026 and SpaceX’s rapid launch cadence will ensure worldwide services available to Telesat customers by 2027',
      author: '',
      authorImageUrl: '',
      category: 'Satellites',
      views: 1204,
      imageUrl: './assets/images/news_1.jpg',
      createdAt: DateTime.now().subtract(const Duration(hours: 6)),
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
