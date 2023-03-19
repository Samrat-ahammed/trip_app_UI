import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;
  int totalPage = 4;
  void onScroll() {
    print('sss');
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          makePage(
              page: 1,
              image: 'assets/paul-pastourmatzis-ysA6qL8j-OI-unsplash.jpg',
              title: 'USA',
              description:
                  'Yosemite National Park is in California’s Sierra Nevada mountains. It’s famed for its giant, ancient sequoia trees, and for Tunnel View, the iconic vista of towering Bridalveil Fall and the granite cliffs of El Capitan and Half Dome.'),
          makePage(
              page: 2,
              image: 'assets/dhru-j-i1e9fGrgILg-unsplash.jpg',
              title: 'Golden Gate Bridge',
              description:
                  'The Golden Gate Bridge is a suspension bridge spanning the Golden Gate, the one-mile-wide strait connecting San Francisco Bay and the Pacific Ocean.'),
          makePage(
              page: 3,
              image: 'assets/johnson-martin-zpq2DMidOY0-unsplash.jpg',
              title: 'Sedona',
              description:
                  "Sedona is regularly described as one of America's most beautiful places. Nowhere else will you find a landscape as dramatically colorful."),
          makePage(
              page: 4,
              image: 'assets/kazuend-zBSlRlaf4zE-unsplash.jpg',
              title: 'Savannah',
              description:
                  "Savannah, with its Spanish moss, Southern accents and creepy graveyards, is a lot like Charleston, South Carolina. But this city about 100 miles to the south has an eccentric streak."),
        ],
      ),
    );
  }

  Widget makePage({image, String? title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2)
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    page.toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title.toString(),
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        starIcon(
                          3,
                          Colors.yellow,
                        ),
                        starIcon(
                          3,
                          Colors.yellow,
                        ),
                        starIcon(
                          3,
                          Colors.yellow,
                        ),
                        starIcon(
                          3,
                          Colors.yellow,
                        ),
                        starIcon(
                          5,
                          Colors.grey,
                        ),
                        Text(
                          '  4.0',
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          '  {2300}',
                          style: TextStyle(color: Colors.white38, fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 50),
                      child: Text(
                        description.toString(),
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.7), height: 1.9),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'READ MORE',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container starIcon(double rPaddeng, Color color) {
    return Container(
      margin: EdgeInsets.only(left: rPaddeng),
      child: Icon(
        Icons.star,
        color: color,
        size: 15,
      ),
    );
  }
}
