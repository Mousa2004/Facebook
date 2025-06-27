import 'package:facebook/component/customedtextfield.dart';
import 'package:facebook/facebook_scraen.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Center(child: Image.asset("assets/images/facebook.png")),
            ),
            Expanded(
              flex: 6,
              child: Column(
                children: [
                  Customedtextfield(text: "Mobile Number or Email Address"),
                  SizedBox(height: 20),
                  Customedtextfield(
                    text: "Password",
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      color: Color(0xFF898F9C),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1877F2),
                        borderRadius: BorderRadiusGeometry.circular(16),
                      ),
                      width: double.infinity,
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FacebookScraen(),
                            ),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Forgotten Password ?",
                    style: TextStyle(
                      color: Color(0xFF898F9C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusGeometry.circular(16),
                        border: Border.all(color: Color(0xFF1877F2)),
                      ),
                      width: double.infinity,

                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Color(0xFF1877F2),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
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
