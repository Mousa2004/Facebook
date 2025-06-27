import 'dart:async';

import 'package:facebook/login.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 11,
              child: Center(child: Image.asset("assets/images/facebook.png")),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Text(
                    "From",
                    style: TextStyle(
                      color: Color(0xFF898F9C),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/Vector.png"),
                      Text(
                        "Meta",
                        style: TextStyle(
                          color: Color(0xFF1877F2),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
