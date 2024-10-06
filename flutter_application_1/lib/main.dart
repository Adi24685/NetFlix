import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Netflix Demo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Action Movies",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://static.toiimg.com/thumb/imgsize-23456,msid-103060645,width-600,resizemode-4/103060645.jpg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/9/90/Animal_%282023_film%29_poster.jpg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/c/c3/Pathaan_film_poster.jpg'),
                          ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/f/f8/Tiger_3_poster.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Romance Movie",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/6/6e/Half_Girlfriend_Poster.jpg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/9/9f/Sanam_Re_movie_poster.jpg',
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/2/2a/Yami_Gautam%27s_Junooniyat_poster.jpg'),
                          ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        height: 300,
                        width: 300,
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/en/0/0f/Ek_Villain_Poster.jpg',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
