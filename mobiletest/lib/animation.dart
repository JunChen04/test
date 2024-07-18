import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobiletest/loginpage.dart';

class animationPage extends StatefulWidget {
  const animationPage({super.key});

  @override
  State<animationPage> createState() => _animationPageState();
}

class _animationPageState extends State<animationPage> {
  void initState() {
    super.initState();
    // Simulate a delay and navigate to the login page after a few seconds
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginpage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 200,
              ),
              Text(
                'W E L C O M E',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Stack(
                  children: [
                    Icon(
                      Icons.school,
                      color: Colors.white,
                      size: 300,
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
}
