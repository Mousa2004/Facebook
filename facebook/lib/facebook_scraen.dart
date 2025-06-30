import 'package:facebook/component/post_screan.dart';
import 'package:flutter/material.dart';

class FacebookScraen extends StatefulWidget {
  const FacebookScraen({super.key});

  @override
  State<FacebookScraen> createState() => _FacebookScraenState();
}

class _FacebookScraenState extends State<FacebookScraen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 6, vsync: this);
    super.initState();
  }

  List imageName = [
    {"name": "assets/images/messi2.png"},
    {"name": "assets/images/messi1.jpg"},
    {"name": "assets/images/lamine.jpg"},
    {"name": "assets/images/slogan.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 11),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Text(
                      "Facebook",
                      style: TextStyle(
                        color: Color(0xFF1877F2),
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Expanded(child: Image.asset("assets/images/Plus.jpg")),
                  Expanded(child: Image.asset("assets/images/Search.jpg")),
                  Expanded(child: Image.asset("assets/images/Messenger.jpg")),
                ],
              ),
            ),

            TabBar(
              indicatorColor: Color(0xFF1877F2),
              indicatorWeight: 3,
              controller: controller,
              tabs: [
                Image.asset("assets/images/home.jpg"),
                Image.asset("assets/images/watch.jpg"),
                Image.asset("assets/images/Store.jpg"),
                Image.asset("assets/images/Profile.jpg"),
                Image.asset("assets/images/Notification.jpg"),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    "assets/images/messi.jpg",
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                controller: controller,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(11),
                          child: Row(
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/messi.jpg",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "What’s in Your Mind?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF898F9C),
                                  ),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {},
                                child: Image.asset("assets/images/Photos.jpg"),
                              ),
                            ],
                          ),
                        ),
                        Divider(color: Color(0xFF898F9C)),

                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 11),
                          child: SizedBox(
                            height: 180,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: imageName.length,
                              itemBuilder: (context, i) => Container(
                                margin: EdgeInsets.only(left: 12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                clipBehavior: Clip.antiAlias,
                                child: Image.asset(
                                  imageName[i]['name'],
                                  width: 112,
                                  height: 178,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Divider(color: Colors.black),
                        PostScrean(),
                        Divider(color: Colors.black),
                        PostScrean(),
                      ],
                    ),
                  ),

                  Column(children: []),
                  Column(children: []),
                  Column(children: []),
                  Column(children: []),
                  Column(children: []),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
