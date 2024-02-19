import 'package:flutter/material.dart';

class MyLanding extends StatefulWidget {
  const MyLanding({super.key});

  @override
  State<MyLanding> createState() => _MyLandingState();
}

class _MyLandingState extends State<MyLanding> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bradiln',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  double? _deviceWidth;
  @override
  Widget build(BuildContext context) {
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SizedBox(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: const TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'BRAD',
                    style: TextStyle(
                        letterSpacing: 2, fontSize: 25, color: Colors.white),
                  ),
                  TextSpan(
                    text: 'KILN',
                    style: TextStyle(
                      // letterSpacing: 2,
                      fontSize: 25,
                      color: Color.fromARGB(255, 233, 143, 143),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 48.0,
              width: 48.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon.png'),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ],
        )),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/backgrounf.png'),
                fit: BoxFit.contain),
          ),
          child: Column(
            children: [
              SizedBox(
                child: _banner(),
                height: 200,
              ),
              _heading(),
              _menu(),
              _search(),
              _Range(),
              _cars(),
              _selection()
            ],
          ),
        )),
      ),
    );
  }

  Widget _banner() {
    return Container(
      width: _deviceWidth,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/banner.jpeg'), fit: BoxFit.fill)),
    );
  }

  Widget _heading() {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: RichText(
        text: const TextSpan(
          children: <TextSpan>[
            TextSpan(
              text: 'FIND YOUR ',
              style: TextStyle(
                  fontFamily: 'Armstrong',
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  fontSize: 25,
                  color: Color.fromARGB(255, 152, 123, 123)),
            ),
            TextSpan(
              text: 'PERFECT CAR',
              style: TextStyle(
                fontFamily: 'Armstrong',
                fontWeight: FontWeight.bold,
                // letterSpacing: 2,
                fontSize: 25,
                color: Color.fromARGB(255, 205, 82, 82),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialButton(
          minWidth: _deviceWidth! * 0.32,
          color: Colors.white,
          elevation: 3,
          onPressed: () {},
          child: const Text("SEARCH"),
        ),
        MaterialButton(
          minWidth: _deviceWidth! * 0.32,
          color: Colors.white,
          elevation: 3,
          onPressed: () {},
          child: const Text(
            ("ASSIST ME"),
          ),
        ),
        MaterialButton(
          minWidth: _deviceWidth! * 0.32,
          color: Colors.white,
          elevation: 3,
          onPressed: () {},
          child: const Text("CONSULT US"),
        ),
      ],
    );
  }

  Widget _search() {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 20),
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              color: Colors.grey.shade300,
              height: 60,
              width: _deviceWidth! * 0.9,
              child: const TextField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    suffixIcon: Icon(Icons.search)),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _Range() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () {},
          child: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black),

            height: 70,
            width: 70,
            color: Colors.red.shade400,

            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'UNDER\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: '08\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'LAKH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 50,
          width: 4,
          color: Colors.grey.shade400,
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black),

            height: 55,
            width: 55,
            color: const Color.fromARGB(255, 205, 166, 165),

            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'UNDER\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: '15\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'LAKH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 4,
          color: Colors.grey.shade400,
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            height: 55,
            width: 55,
            color: const Color.fromARGB(255, 205, 166, 165),
            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'UNDER\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: '25\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'LAKH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 60,
          width: 4,
          color: Colors.grey.shade400,
        ),
        TextButton(
          onPressed: () {},
          child: Container(
            // decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: Colors.black),

            height: 55,
            width: 55,
            color: const Color.fromARGB(255, 205, 166, 165),

            child: Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: 'UNDER\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: '50\n',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    TextSpan(
                      text: 'LAKH',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _cars() {
    return Row(
      children: [
        Center(
          child: Column(children: [
            Container(
              width: _deviceWidth! * 0.4,
              height: 250,
              margin: const EdgeInsets.fromLTRB(25, 20, 10, 20),
              color: Colors.white,
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '₹ 1.04 *Lakhs',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.red),
                        ),
                        TextSpan(
                          text: 'onwards\n',
                          style: TextStyle(fontSize: 8, color: Colors.black),
                        ),
                        TextSpan(
                          text: 'Ex showroom price',
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Stack(alignment: const Alignment(0.9, -0.95), children: [
                      Image(
                          width: _deviceWidth! * 0.43,
                          image: const AssetImage('assets/car.jpeg')),
                      const Icon(Icons.bookmark),
                    ]),
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.airline_seat_recline_extra_outlined,
                                    color: Colors.grey.shade500,
                                  ),
                                  RichText(
                                      text: TextSpan(
                                          text: '5,7,9\n Seats',
                                          style: TextStyle(
                                              color: Colors.grey.shade500))),
                                ],
                              ),
                              Icon(
                                Icons.airline_seat_recline_extra_outlined,
                                color: Colors.grey.shade500,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: '5,7,9\n Seats',
                                      style: TextStyle(
                                          color: Colors.grey.shade500))),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                 Image(image: const AssetImage('assets/fuel.png'),width: 25,
                                 height: 20,
                                 color: Colors.grey.shade500,),
                                  RichText(
                                      text: TextSpan(
                                          text: 'Petrol\n Petrol',
                                          style: TextStyle(
                                              color: Colors.grey.shade500))),
                                ],
                              ),
                              Icon(
                                Icons.airline_seat_recline_extra_outlined,
                                color: Colors.grey.shade500,
                              ),
                              RichText(
                                  text: TextSpan(
                                      text: 'Petrol\n Petrol',
                                      style: TextStyle(
                                          color: Colors.grey.shade500))),
                            ],
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ]),
        ),
        Column(children: [
          Container(
            width: _deviceWidth! * 0.45,
            height: 250,
            margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            color: Colors.white,
            child: Column(
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '₹ 1.04 *Lakhs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.red),
                      ),
                      TextSpan(
                        text: 'onwards\n',
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Ex showroom price',
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(alignment: const Alignment(0.9, -0.95), children: [
                    Image(
                        width: _deviceWidth! * 0.43,
                        image: const AssetImage('assets/car.jpeg')),
                    const Icon(Icons.bookmark),
                  ]),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.airline_seat_recline_extra_outlined,
                                  color: Colors.grey.shade500,
                                ),
                                RichText(
                                    text: TextSpan(
                                        text: '5,7,9\n Seats',
                                        style: TextStyle(
                                            color: Colors.grey.shade500))),
                              ],
                            ),
                            Icon(
                              Icons.airline_seat_recline_extra_outlined,
                              color: Colors.grey.shade500,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: '5,7,9\n Seats',
                                    style: TextStyle(
                                        color: Colors.grey.shade500))),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(image: const AssetImage('assets/fuel.png'),width: 25,
                                 height: 20,
                                 color: Colors.grey.shade500,),
                                RichText(
                                    text: TextSpan(
                                          text: 'Petrol\n Petrol',
                                          style: TextStyle(
                                              color: Colors.grey.shade500))),
                              ],
                            ),
                            Icon(
                              Icons.airline_seat_recline_extra_outlined,
                              color: Colors.grey.shade500,
                            ),
                            RichText(
                                text: TextSpan(
                                    text: '5,7,9\n Seats',
                                    style: TextStyle(
                                        color: Colors.grey.shade500))),
                          ],
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ]),
      ],
    );
  }

  Widget _selection() {
    return Row(
      children: [
        Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment(1.5, -0.5),
                  children: <Widget>[Container(
                    width: _deviceWidth! * 0.99,
                    height: 150,
                    color: Colors.white,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 25),
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                    child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                            text: 'FUEL',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.grey),
                          ),
                          TextSpan(
                            text: 'PRICE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                    
                    
                  ),
                
                  Image(image: AssetImage('assets/logo.png'),
                  height: 100,
                  width: 200,),
                  ]
                ),
              ],
              
            ),
            
          ],
          
        ),
       
       
      ],
    );
  }
}
