import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Basketball World',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 30,
            ),
          ),
          Icon(
            Icons.notifications,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
