import 'package:flutter/material.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({super.key});

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Tabbar Screen"),
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.person),
                  text: "Profile",
                ),
                Tab(
                  icon: Icon(Icons.heart_broken_sharp),
                  text: "Health",
                ),
              ],
            )),
        body: TabBarView(children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: const Color.fromARGB(255, 100, 95, 80),
          ),
          Container(
            color: const Color.fromARGB(255, 95, 39, 72),
          ),
        ]),
      ),
    );
  }
}
