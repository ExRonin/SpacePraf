import 'package:equatable/equatable.dart';

// A class representing contact information for various organizations
class Contact extends Equatable {
  final String id; // Unique identifier for the contact information
  final String title; // Title or name of the organization
  final String
      subtitle; // Subtitle or additional details about the organization
  final String
      body; // Full contact information, including address and contact details
  final String author; // Author's name or contact person
  final String authorImageUrl; // URL of the author's image
  final String category; // Category or type of the organization
  final String imageUrl; // URL of an image associated with the organization
  final int views; // Number of views for the contact information
  final DateTime
      createdAt; // Timestamp indicating when the contact information was created

// Constructor to initialize a Contact object
  const Contact({
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

// List of sample contact information for demonstration
  static List<Contact> contact = [
    Contact(
      id: '1',
      title: '',
      subtitle: '',
      body: '',
      author: '',
      authorImageUrl: '',
      category: '',
      views: 1204,
      imageUrl: '',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
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
