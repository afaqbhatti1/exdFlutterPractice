import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              displayAlert(context);
            },
            child: const Text("Show Alert"),
          ),
          ElevatedButton(
            onPressed: () {
              displayBottomSheetAlert(context);
            },
            child: const Text("Show Bottom Sheet Alert"),
          ),
        ],
      ),
    );
  }

  displayAlert(context) {
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              height: 200,
              width: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ListTile(
                      leading: Icon(Icons.visibility),
                      title: Text('Preview'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.person_add),
                      title: Text('Share'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.link),
                      title: Text('GetLink'),
                    ),
                    const ListTile(
                      leading: Icon(Icons.copy),
                      title: Text('Preview'),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Okay")),
                  ],
                ),
              ),
            ),
          );
        });
  }

  displayBottomSheetAlert(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            height: 200,
            child: Column(
              children: [
                const Text("This is Bottom 'Sheet"),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Okay"))
              ],
            ),
          );
        });
  }
}
