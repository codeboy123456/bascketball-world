import 'package:flutter/material.dart';

class PlayerCardWidget extends StatelessWidget {
  PlayerCardWidget(
      {required this.image, required this.name, required this.selected});
  String image;
  String name;
  bool selected;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: selected ? 350 : 300,
        height: selected ? 180 : 150,
        child: Stack(
          children: [
            SizedBox(
              width: selected ? 350 : 300,
              height: selected ? 180 : 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.network(image, fit: BoxFit.fill),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.black54,
                child: Text(
                  name,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
