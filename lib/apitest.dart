import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lottie/lottie.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {
  var data;
  bool loading = false;
  List countryList = [];
  @override
  void initState() {
    super.initState();
    getDatafromApi();
  }

  getDatafromApi() async {
    final response = await http.get(
      Uri.parse('https://api.publicapis.org/entries'),
    );
    print(response.statusCode);
    print(response.body);
    var body = jsonDecode(response.body);
    setState(() {
      data = body;
      print(countryList = data["entries"]);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.blueAccent)),
                child: data == null
                    ? Lottie.asset(
                        'json/9921-loader.json',
                        width: 200,
                        height: 200,
                        repeat: true,
                      )
                    : Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              Text(
                                  "Total Countries: ${data['count'].toString()}"),
                              const Divider(),
                              // Text(
                              //     "Description: ${countryList[0]['Description'].toString()}")
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: countryList.length,
                                itemBuilder: (((context, index) {
                                  return Column(
                                    children: [
                                      Text(countryList[index]['Description']
                                          .toString()),
                                      Text(
                                          countryList[index]['API'].toString()),
                                      const Divider(),
                                    ],
                                  );
                                })),
                              ),
                            ],
                          ),
                        ),
                      )),
          ],
        ),
      ),
    );
  }
}
