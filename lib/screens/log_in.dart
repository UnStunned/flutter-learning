import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    width: 200,
                    height: 20,
                    child: Text(
                      'LOG IN',
                      style: TextStyle(
                          fontSize: 20,
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      child: SvgPicture.asset(
                    'assets/images/login.svg',
                    height: 250,
                    width: 411.4,
                  )),
                  SizedBox(
                    child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Username",
                            label: Text('Enter Username'))),
                  ),
                  SizedBox(
                    child: TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Password",
                            label: Text('Enter Password'))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("Hello world!");
                      },
                      style: TextButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 108, 99, 255)),
                      child: const Text('Log in'))
                ])));
  }
}
