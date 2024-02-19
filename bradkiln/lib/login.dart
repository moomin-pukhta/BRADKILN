// ignore_for_file: prefer_const_literals_to_create_immutables

// import 'dart:ffi';

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/login.png'), fit: BoxFit.cover)),
      child: Scaffold(
            appBar: AppBar(
         
          backgroundColor: Colors.black,
          title: RichText(
            text: const TextSpan(children: <TextSpan>[
              TextSpan(
                text: 'BRAD',
                style: TextStyle(
                  letterSpacing: 2,
                  fontSize: 25,
                  color: Colors.white
                ),
              ),
              TextSpan(
                text: 'KILN',
                style: TextStyle(
                  // letterSpacing: 2,
                  fontSize: 25,
                  color: Color.fromARGB(255, 233, 143, 143),
                ),
              ),
            ]
            ),)
          ),
        
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 50, top: 100),
              child: const Text(
                "Welcome\nback!",
                style: TextStyle(
                  fontSize: 33,
                  //backgroundColor: Colors.black38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
             
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.4,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: Colors.grey.shade300,
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        Navigator.pushNamed(context, 'landing');
                      },
                      hoverColor: Colors.blue,
                      backgroundColor: Colors.pink.shade300,
                      label: const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FloatingActionButton.extended(
                        onPressed: () {},
                        backgroundColor: Colors.amber.shade300,
                        label: const Text("Forgot Password"),
                      ),
                      FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        backgroundColor: Colors.amber.shade300,
                        label: const Text("Sign Up!"),
                      ),

                    ],
                  )
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
