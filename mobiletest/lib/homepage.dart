import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final String studentId;

  const Homepage({super.key, required this.studentId});

  // const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 200,
              color: Colors.grey[300],
              child: Center(
                  child: Text(
                "Welcome, $studentId",
                style: TextStyle(fontSize: 20),
              )),
            ),
            MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.deepPurple,
              child: Text(
                'back to login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
