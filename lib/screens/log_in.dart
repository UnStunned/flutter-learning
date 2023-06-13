// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  final _formKey = GlobalKey<FormState>();

  void checkConnection() async {
    final connectivityState = await Connectivity().checkConnectivity();
    print(connectivityState);
  }

  @override
  void initState() {
    super.initState();
    checkConnection();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 20,
                      child: Text(
                        'Hello $name',
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
                            label: Text('Enter Username')),
                        onChanged: (value) => {
                          setState(
                            () => name = value,
                          )
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a username';
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter a password";
                            } else {
                              return null;
                            }
                          },
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
                          if (_formKey.currentState!.validate() == false) {
                            print("Hey");
                          } else {
                            Navigator.pushNamed(context, "/");
                          }
                        },
                        style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 108, 99, 255)),
                        child: const Text('Log in')),
                    const SizedBox(
                      height: 30,
                    )
                  ]),
            )));
  }
}
