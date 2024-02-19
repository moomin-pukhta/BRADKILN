import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
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
                "Register!",
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
                    top: MediaQuery.of(context).size.height * 0.3,
                    right: 35,
                    left: 35),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 122, 169, 220),
                        filled: true,
                        hintText: 'Name',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 122, 169, 220),
                        filled: true,
                        hintText: 'Email',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 122, 169, 220),
                        filled: true,
                        hintText: 'password',
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                  const SizedBox(
                    height: 30,
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
                        "Register",
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
                 
                      FloatingActionButton.extended(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        backgroundColor: Colors.amber.shade300,
                        label: const Text("Sign In!"),
                      ),

                    ],
                  )
                ),
              ),
            
          ],
        ),
      ),
    );
  }
  }
