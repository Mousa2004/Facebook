import 'package:flutter/material.dart';

class PostScrean extends StatelessWidget {
  const PostScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Image.asset(
              "assets/images/routelogo.jpg",
              height: 53,
              width: 53,
              fit: BoxFit.fill,
            ),
          ),
          title: Text(
            "Route",
            style: TextStyle(
              color: Color(0xFF242527),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Row(
            children: [
              Text(
                "8h.",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF898F9C),
                ),
              ),
              Image.asset("assets/images/Earth.png"),
            ],
          ),
          trailing: Image.asset("assets/images/menu.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(11),
          child: Image.asset("assets/images/route1.png"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset("assets/images/heart.png"),
                  SizedBox(width: 5),
                  Image.asset("assets/images/Chat_Dots.png"),
                  SizedBox(width: 5),
                  Image.asset("assets/images/send.jpg"),
                ],
              ),

              Image.asset("assets/images/Bookmark.png"),
            ],
          ),
        ),
      ],
    );
  }
}
