import 'package:flutter/material.dart';
import 'package:mobiletest/homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final idController = TextEditingController();
  final passwordController = TextEditingController();
  final String pw = "123";

  void verify() {
    if (passwordController.text == pw) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => Homepage(
                  studentId: idController.text,
                )),
      );
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Error"),
                content: Text("Incorrect password"),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'C:/Users/User/Desktop/mobileTest/mobiletest/lib/assets/neuc-logo-edited.png',
              width: 100,
              height: 100,
            ),
            Text(
              "L O G I N",
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: idController,
                  decoration: InputDecoration(
                    hintText: 'Enter Student ID',
                    hintStyle: TextStyle(color: Colors.grey[300]),
                    labelText: 'Student ID',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.person_rounded),
                    prefixIconColor: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: 'Enter password',
                    hintStyle: TextStyle(color: Colors.grey[300]),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey),
                    prefixIcon: Icon(Icons.password),
                    prefixIconColor: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: verify,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                minimumSize: Size(200, 60),
              ),
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
