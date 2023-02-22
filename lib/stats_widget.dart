import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  StatsWidget({required this.data});
  Map data;
  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Container(
        width: 250,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Points'),
                  Text(data['points']),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Fouls'),
                  Text(data['pFouls'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Assists '),
                  Text(data['assists'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Free throws made'),
                  Text(data['ftm'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Blocks'),
                  Text(data['blocks'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Turnovers'),
                  Text(data['turnovers'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Steals'),
                  Text(data['steals'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Total Rebounds'),
                  Text(data['totReb'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Field goals made '),
                  Text(data['fgm'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.sports_basketball),
                  Text('Field throws attempted'),
                  Text(data['ftm'])
                ],
              ),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        ),
      );
    }
  }
}
