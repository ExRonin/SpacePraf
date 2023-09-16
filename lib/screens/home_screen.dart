import 'package:flutter/material.dart';
import 'package:Spacepraf/models/article_model.dart';
import 'package:Spacepraf/models/news_model.dart';
import 'package:Spacepraf/screens/news_screen.dart';
import 'package:Spacepraf/screens/screens.dart';
import 'package:Spacepraf/widgets/custom_tag.dart';
import 'package:url_launcher/url_launcher.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/image_container.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

// This screen represents the UI for the Home Screen.

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/home';

// Define a named route for this screen.
  @override
  Widget build(BuildContext context) {
    Article article = Article.articles[0];

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {}, // Handle the leading button's functionality here.
          icon: const Icon(
            Icons.bedtime_outlined,
            color: Colors.white,
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(index: 0),
      extendBodyBehindAppBar: true,
      body: ListView(padding: EdgeInsets.zero, children: [
        // The order of the children lies here and is rendered in the same sequence.
        _NewsOfTheDay(article: article),
        _BreakingNews(articles: Article.articles),
        _Facts(articles: Article.articles),
        _LatestNews(news: News.news),
        _About(articles: Article.articles),
      ]),
    );
  }
}

// ----------------------------------------------------------------
// The following Contains the Space Missions and the carousel on the app.
class _BreakingNews extends StatelessWidget {
  const _BreakingNews({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Space Missions',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ArticleScreen.routeName,
                        arguments: articles[index],
                      );
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                          width: MediaQuery.of(context).size.width * 0.5,
                          imageUrl: articles[index].imageUrl,
                        ),
                        const SizedBox(height: 5),
                        Text(
                          articles[index].title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          articles[index].category,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(color: Colors.grey[500], height: 1.5),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// The following contains the facts of the app
//This class has potential for being improved and hence is in a seperate class
class _Facts extends StatelessWidget {
  // Future<String> fetchDidYouKnow(context) async {
  //   final response = await http.get(
  //     Uri.parse(
  //         'https://images-api.nasa.gov/records?keywords=did%20you%20know&media_type=image&year_start=1920&year_end=2022&api_key=Yourapikey'),
  //   );

  //   if (response.statusCode == 200) {
  //     final jsonData = json.decode(response.body);
  //     if (jsonData['collection']['items'].isNotEmpty) {
  //       return jsonData['collection']['items'][0]['data'][0]['description'];
  //     }
  //   }

  //   throw Exception('Gagal mengambil DYK text');
  // }

  const _Facts({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<String>(
    //   future: fetchDidYouKnow(context),
    //   builder: (context, snapshot) {
    //     if (snapshot.connectionState == ConnectionState.waiting) {
    //       return CircularProgressIndicator();
    //     } else if (snapshot.hasError) {
    //       return Text('Error: ${snapshot.error}');
    //     } else {
    //       final dykText = snapshot.data;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Quotes',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text(
            //dykText ?? 'Tidak ada DYK text tersedia.',
            "“You want to wake up in the morning and think the future is going to be great - and that’s what being a spacefaring civilization is all about. It’s about believing in the future and thinking that the future will be better than the past. And I can’t think of anything more exciting than going out there and being among the stars.” -Elon Musk",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
        ],
      ),
    );
  }
  //   },
  // );
}
// }

// This screen has the UI for the Latest News
// The information on this page is available in the news_modal.dart file in the models directory

class _LatestNews extends StatelessWidget {
  const _LatestNews({
    Key? key,
    required this.news,
  }) : super(key: key);

  final List<News> news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: news.length,
              itemBuilder: (context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        NewsScreen.routeName,
                        arguments: news[index],
                      );
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ImageContainer(
                            width: MediaQuery.of(context).size.width * 0.5,
                            imageUrl: news[index].imageUrl,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            news[index].title,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    height: 1.5),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            news[index].category,
                            maxLines: 2,
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: Colors.white, height: 1.5),
                          ),
                        ]),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

// This screen has the UI for the hero Section
// The following consists of a hero image along with an option to read more
// The information on this page is available in the articles_modal.dart file in the models directory
class _NewsOfTheDay extends StatelessWidget {
  const _NewsOfTheDay({
    Key? key,
    required this.article,
  }) : super(key: key);

  final Article article;

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      height: MediaQuery.of(context).size.height * 0.45,
      width: double.infinity,
      padding: const EdgeInsets.all(20.0),
      imageUrl: article.imageUrl,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold, height: 1.25, color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(padding: EdgeInsets.zero),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ArticleScreen.routeName,
                      arguments: article,
                    );
                  },
                  child: Text(
                    'Read More',
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_right_alt,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//This screen has the UI for the About section
//The follwing section is built so that more information can be passed
class _About extends StatelessWidget {
  _About({
    Key? key,
    required this.articles,
  }) : super(key: key);

  final List<Article> articles;

  //URL to the Augmented Reality Effect
  final Uri url = Uri.parse("https://youtu.be/921VbEMAwwY");
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15), backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About Space X',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   child: Image.asset(
          //     './assets/images/adventures.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),

          //About section Overview
          Text(
            "SpaceX has gained worldwide attention for a series of historic milestones. It is the only private company capable of returning a spacecraft from low-Earth orbit, and in 2012 our Dragon spacecraft became the first commercial spacecraft to deliver cargo to and from the International Space Station. And in 2020, SpaceX became the first private company to take humans there as well. Click through the timeline above to see some of our milestone accomplishments.",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
          Container(
            child: Image.asset(
              './assets/images/hero_1.png',
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Colors.grey[500], height: 1.5),
          ),
          SizedBox(
            height: 20,
          ),

          //The follwing contains the Evelated button with the Augmented Reatity Effect made for this app
          Container(
            height: 50,
            width: 2100,
            color: const Color.fromARGB(255, 163, 163, 163),
            child: ElevatedButton(
              style: style,
              child: Text("About Starship"),
              onPressed: () {
                launchUrl(url);
              },
            ),
          ),
        ],
      ),
    );
  }
}
