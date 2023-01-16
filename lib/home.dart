import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: home(),
    );
  }
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  int currentIndex = 0;
  var arrNames = [
    "1st Song",
    "2st Song",
    "3st Song",
    "4st Song",
  ];

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.deepPurple.shade500,
                Colors.deepPurple.shade900
              ])),
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mq.size.height * 0.02),
                Text(
                  'Hello user,',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: mq.size.height * 0.02),
                Text(
                  'What you wan\'t to hear today ?',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: mq.size.height * 0.02,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(start: 0, end: 20),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                        prefixIcon: Icon(
                          FontAwesomeIcons.search,
                          size: mq.size.height * 0.02,
                          color: Colors.white54,
                        ),
                        label: Text('Search Gaana',
                            style: TextStyle(color: Colors.white54)),
                        suffixIcon: Icon(FontAwesomeIcons.eye,
                            size: mq.size.height * 0.03,
                            color: Colors.white54)),
                  ),
                ),
                SizedBox(height: mq.size.height * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Text('Recommendation',
                          style: TextStyle(color: Colors.white, fontSize: 18)),
                      SizedBox(width: mq.size.width * 0.06),
                      Text('Trending',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 18)),
                      SizedBox(width: mq.size.width * 0.06),
                      Text('Business',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 18)),
                      SizedBox(width: mq.size.width * 0.06),
                      Text('Crypt',
                          style:
                              TextStyle(color: Colors.white54, fontSize: 18)),
                    ],
                  ),
                ),
                SizedBox(height: mq.size.height * 0.01),
                Text('IMAGE',
                    style: TextStyle(fontSize: 120, color: Colors.white)),
                Row(
                  children: [
                    Text(
                      'Recently Play',
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                    SizedBox(width: mq.size.width * 0.4),
                    Text(
                      'See All',
                      style: TextStyle(fontSize: 18, color: Colors.white54),
                    ),
                  ],
                ),
                SizedBox(
                  height: mq.size.height * 0.08,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: arrNames.length,
                    itemBuilder: (context, index) => Column(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          child: Text(
                            "${arrNames[index]}",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.yellowAccent,
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home),
              label: 'home',
              backgroundColor: Colors.deepPurple.shade800,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookOpen),
              label: 'library',
              backgroundColor: Colors.deepPurple.shade800,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.rupeeSign),
              label: 'premium',
              backgroundColor: Colors.deepPurple.shade800,
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.earth),
              label: 'profile',
              backgroundColor: Colors.deepPurple.shade800,
            ),
          ],
        ),
      ),
    );
  }
}
