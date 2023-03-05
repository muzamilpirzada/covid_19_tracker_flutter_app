import 'package:covid_19_tracker_app/View/world_states.dart';
import 'package:flutter/material.dart';

class CountryDetial extends StatefulWidget {
  String image = "";
  String name = "";
  int totalCases = 0,
      totalDeaths = 0,
      totalRecovered = 0,
      active = 0,
      critical = 0,
      todayRecovered = 0;

  CountryDetial({
    required this.image,
    required this.name,
    required this.totalCases,
    required this.totalDeaths,
    required this.totalRecovered,
    required this.todayRecovered,
  });

  @override
  State<CountryDetial> createState() => _CountryDetialState();
}

class _CountryDetialState extends State<CountryDetial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff004D40),
      appBar: AppBar(
        backgroundColor: Color(0xff004D40),
        title: Text(widget.name),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .100),
                child: Card(
                  color: Color(0xff004D40),
                  child: Column(children: [
                    ReusableCard(
                      title: 'Cases',
                      vlaue: widget.totalCases.toString(),
                    ),
                    ReusableCard(
                      title: 'Total Recovered',
                      vlaue: widget.totalRecovered.toString(),
                    ),
                    ReusableCard(
                      title: 'Total Deaths',
                      vlaue: widget.totalDeaths.toString(),
                    ),
                    ReusableCard(
                      title: 'Today recovered',
                      vlaue: widget.todayRecovered.toString(),
                    ),
                  ]),
                ),
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(widget.image),
              )
            ],
          ),
        ],
      ),
    );
  }
}
