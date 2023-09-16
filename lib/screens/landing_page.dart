import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:Spacepraf/screens/home_screen.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  Future<Map<String, dynamic>> fetchAstronomyPictureOfTheDay() async {
    final response = await http.get(
      Uri.parse('https://api.nasa.gov/planetary/apod?api_key=yourapikey'),
    );

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Gagal mengambil data APOD');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, dynamic>>(
      future: fetchAstronomyPictureOfTheDay(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Error: ${snapshot.error}'),
          );
        } else {
          final data = snapshot.data;
          return Scaffold(
            extendBodyBehindAppBar:
                true, // Memungkinkan konten mengambil bagian atas app bar
            body: Stack(children: [
              // Background Gambar dari APOD
              Image.network(
                data?['url']?.toString() ?? '',
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
                alignment: Alignment.center,
              ),
              // Konten Tengah dengan Tombol "Get Started"
              Container(
                  margin: const EdgeInsets.only(top: 200, left: 20, right: 20),
                  child: Row(children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //The following consists oif the text used in the landing page
                        Text(
                          'Explore the',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60),
                        ),
                        Text(
                          'Universe',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: Color.fromARGB(255, 1, 218, 247),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: Text(
                            'Journey Through the Cosmos through the sollarpraf app',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                    fontWeight: FontWeight.w300,
                                    fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                  context,
                                  HomeScreen.routeName,
                                );
                              },
                              child: Text(
                                'Get Started',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 30,
                                    ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Icon(
                              Icons.arrow_right_alt,
                              color: Colors.white,
                            ),
                          ],
                        )
                      ],
                    ),
                  ]))
            ]),
          );
        }
      },
    );
  }
}
