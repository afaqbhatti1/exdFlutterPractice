import 'package:flutter/material.dart';

class LoginScreenTask extends StatefulWidget {
  const LoginScreenTask({super.key});

  @override
  State<LoginScreenTask> createState() => _LoginScreenTaskState();
}

class _LoginScreenTaskState extends State<LoginScreenTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                color: Colors.blue,
                height: MediaQuery.of(context).size.height * 0.18,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Positioned(
                top: -50,
                left: -80,
                child: Container(
                  height: 250,
                  width: 250,
                  // color: Colors.white,
                  // child: Image.asset('assets/images/asd.png'),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage('assets/images/asd.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: DefaultTabController(
              initialIndex: 0,
              length: 2,
              child: Column(
                children: [
                  const TabBar(labelColor: Colors.black, tabs: [
                    Tab(
                      text: "Sign In",
                    ),
                    Tab(
                      text: "Sign Up",
                    ),
                  ]),
                  Expanded(
                    child: TabBarView(children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'E-mail Address',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Email Addresss",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "forget password",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Container(
                                child: Row(
                                  children: const [
                                    Icon(Icons.check_box),
                                    Text("Remember me"),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text("Sign In"),
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text(
                                      "---------",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "  OR  ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "---------",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        color: Colors.transparent,
                                        height: 100,
                                        width: 250,
                                        child: const Text(
                                          "Sign In Using",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 200,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/icons.jpg'))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'E-mail Address',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Email Addresss",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Text(
                                'Password',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const Text(
                                'E-mail Address',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Email Addresss",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const Text(
                                'E-mail Address',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: "Enter Email Addresss",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                      borderSide: const BorderSide(
                                          width: 3, color: Colors.black)),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "forget password",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(),
                                onPressed: () {},
                                child: const Text("Sign Un"),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Text(
                                      "---------",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.grey),
                                    ),
                                    Text(
                                      "  OR  ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    Text(
                                      "---------",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 40.0,
                                          color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        alignment: Alignment.center,
                                        color: Colors.transparent,
                                        height: 100,
                                        width: 250,
                                        child: const Text(
                                          "Sign In Using",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 200,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent,
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/icons.jpg'))),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
