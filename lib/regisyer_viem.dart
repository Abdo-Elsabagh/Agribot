import 'package:flutter/material.dart';
import 'package:flutter_application_1/NavigationBar/NavigationBar.dart';
import 'package:flutter_application_1/NavigationBar/NavigationBar.dart';
import 'package:flutter_application_1/NavigationBar/NavigationExample.dart';
import 'package:flutter_application_1/home-view.dart';
import 'package:flutter_application_1/login_view.dart';
import 'package:flutter_application_1/test.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
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
              height: 80,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/4.jpg'),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'SignUp to your account',
              style: TextStyle(fontSize: 20, color: Colors.teal[400]),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  // hintText: 'Enter y email',
                  label: const Text('Name'),
                  prefixIcon: const Icon(Icons.email_rounded),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(color: Colors.teal))),
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.teal[400], // لون النص
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => NavigationExample2()));
                },
                child: const Text('SignUp')),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('if you have an account'),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const LoginViem(),
                      ));
                    },
                    child: Text(
                      'Login Now',
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
