import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music/TabBar_recom.dart';

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

class _homeState extends State<home> with TickerProviderStateMixin {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context);
    final mqh = MediaQuery.of(context).size.height;
    final mqw = MediaQuery.of(context).size.width;
    TabController _tabController = TabController(length: 4, vsync: this);

    var arrNames = [
      "Selfie mene leli aaj",
      "Dilo ka shooter h mera scooter",
      "pgl hoke nacho",
      "Subhe uthte h hum",
    ];
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color.fromARGB(255, 52, 59, 102),
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
                  height: mq.size.height * 0.03,
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: 15),
                  child: TabBar(
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: Colors.blue,
                    indicator: UnderlineTabIndicator(
                        insets: EdgeInsets.symmetric(horizontal: 50)),
                    labelColor: Colors.white,
                    tabs: [
                      Tab(child: Text('Recommendation')),
                      Tab(child: Text('Trending')),
                      Tab(child: Text('Business')),
                      Tab(child: Text('Crypto')),
                    ],
                  ),
                ),
                TabBarView(children: [
                  recomm(),
                ])
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 20,
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.purpleAccent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.home),
                label: 'home',
                backgroundColor: Colors.deepPurple),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bookOpen),
              label: 'library',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.rupeeSign),
              label: 'premium',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.radio),
              label: 'studio',
            ),
          ],
        ),
      ),
    );
  }
}
