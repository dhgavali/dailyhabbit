import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
          child: Column(
        children: [
          const Text(
            "Welcome to daily habbits",
            style: TextStyle(fontSize: 24),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              width: 300,
              child: Text("Login"),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.red),
              width: 300,
              child: Text("Sign Up"),
            ),
          )
        ],
      )),
    );
  }
}
