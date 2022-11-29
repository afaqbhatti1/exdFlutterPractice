import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiCallCard extends StatefulWidget {
  const ApiCallCard({super.key});

  @override
  State<ApiCallCard> createState() => _ApiCallCardState();
}

class _ApiCallCardState extends State<ApiCallCard> {
  List countryRecordList = [];

  @override
  void initState() {
    super.initState();
    getDatafromApi();
  }

  getDatafromApi() async {
    final response = await http.get(
      Uri.parse(
          'https://datausa.io/api/data?drilldowns=Nation&measures=Population'),
    );
    print(response.statusCode);
    print(response.body);
    var body = jsonDecode(response.body);
    setState(() {
      countryRecordList = body['data'].toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Api Call in List"),
      ),
      body: Container(
        child: countryRecordList.isEmpty
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: countryRecordList.length,
                itemBuilder: (context, index) {
                  return card(
                    countryName: countryRecordList[index]['Nation'].toString(),
                    Population: countryRecordList[index]['Year'].toString(),
                    Year: countryRecordList[index]['Population'].toString(),
                    IDNation: countryRecordList[index]['ID Nation'].toString(),
                  );
                }),
      ),
    );
  }

  Widget card(
      {required countryName,
      required Population,
      required Year,
      required IDNation}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.amber),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Contry Name:"), Text("$countryName")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Population:"), Text("$Population")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("Year: "), Text("$Year")],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [const Text("ID Nation"), Text("$IDNation")],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
