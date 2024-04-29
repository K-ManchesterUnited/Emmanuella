import 'package:emmanuella_haizel/screens/login_screen.dart';
import 'package:emmanuella_haizel/widgets/navbar_roots.dart';
import 'package:emmanuella_haizel/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: SafeArea(
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarRoots(),
                      ));
                },
                child: const Text(
                  "SKIP",
                  style: TextStyle(
                    color: Color(0xFF7165D5),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.asset("images/doctor.png"),
          ),
          const SizedBox(height: 50),
          const Text(
            "Doctors Appointment",
            style: TextStyle(
              color: Color(0xFF7165D5),
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 2,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Doctors  Your Doctor",
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Color(0xFF7165D5),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Log In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Material(
                color: Color(0xFF7165D5),
                borderRadius: BorderRadius.circular(10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
