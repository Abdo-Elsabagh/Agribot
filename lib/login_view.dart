import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationBar/NavigationBar.dart';
import 'package:flutter_application_1/home-view.dart';
import 'package:flutter_application_1/regisyer_viem.dart';
import 'package:flutter_application_1/test.dart';

class LoginViem extends StatefulWidget {
  const LoginViem({super.key});

  @override
  State<LoginViem> createState() => _LoginViemState();
}

class _LoginViemState extends State<LoginViem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/2.jpg'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Welocme to Agribot',
              style: TextStyle(fontSize: 20, color: Colors.teal[400]),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  label: const Text('Email'),
                  //hintText: 'Enter y email',
                  prefixIcon: const Icon(Icons.email),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.teal),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(20))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  // hintText: 'Enter y email',
                  label: const Text('Password'),
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(Icons.remove_red_eye),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.teal))),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) =>  NavigationScreen(),
                  ));
                },
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.teal[400]),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('if you have not an account'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const RegisterView()));
                    },
                    child: Text(
                      'Create one!',
                      style: TextStyle(color: Colors.teal[400]),
                    ))
              ],
            )
          ],
        )),
      ),
    )));
  }
}
