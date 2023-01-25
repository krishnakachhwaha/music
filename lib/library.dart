import 'package:flutter/material.dart';

class Library extends StatefulWidget {
  const Library({Key? key}) : super(key: key);

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromARGB(255, 52, 59, 102),
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: mqh * 0.02),
              Text(
                'Hello user,',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mqh * 0.02),
              Text(
                'What you wan\'t to hear today ?',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: mqh * 0.03),
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
              TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      SizedBox(height: mqh * 0.04),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Image.asset(
                                    "assets/image/nikki_tamboli_shares_first_look_of_her_music_video_main.jpg",
                                    height: mq.size.height * 35 / 100),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 230, left: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color.fromRGBO(52, 59, 102, 0.9),
                                    ),
                                    width: 255,
                                    height: 50,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: mq.size.width * 1.5 / 100),
                                        Stack(
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomLeft,
                                                      colors: [
                                                        Colors.purpleAccent
                                                            .shade100,
                                                        Colors.purpleAccent
                                                            .shade400
                                                      ])),
                                              width: 60,
                                              height: 35,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 10, left: 10),
                                              child: Text("NEW!",
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.white)),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                            width: mq.size.width * 3 / 100),
                                        Text(
                                          'Preacher Podcast eps 11',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: mq.size.width * 8 / 100),
                            Image.network(
                              "https://i.ytimg.com/vi/ZXl8jYhssbM/mqdefault.jpg",
                              height: mq.size.height * 25 / 100,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(height: mq.size.height * 10 / 100),
                          Text(
                            'Recently Play',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                          SizedBox(width: mq.size.width * 44 / 100),
                          Text(
                            'See All',
                            style:
                                TextStyle(fontSize: 16, color: Colors.white54),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: mq.size.height * 0.1 / 100,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: arrNames.length,
                          itemBuilder: (context, index) => Column(
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.only(
                                    bottom: 40),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(11),
                                    color: Colors.white12,
                                  ),
                                  height: 95,
                                  width: 350,
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          "${arrNames[index]}",
                                          style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 40, left: 135),
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(60),
                                                gradient: LinearGradient(
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomLeft,
                                                    colors: [
                                                      Colors.purpleAccent
                                                          .shade100,
                                                      Colors
                                                          .purpleAccent.shade400
                                                    ])),
                                            child: Center(
                                              child: IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons.play_arrow,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
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
          ),
          BottomNavigationBarItem(
            icon: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Library()));
                },
                child: Icon(FontAwesomeIcons.bookOpen)),
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
    );
  }
}
