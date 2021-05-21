import 'package:flutter/material.dart';

class TopSushiCard extends StatelessWidget {
  List<String> imagePath = [
    "images/sushioctopus-removebg-preview.png",
    "images/newsushi-removebg-preview.png",
    "images/mixedsushi-removebg-preview.png",
    "images/ricewithmixed-removebg-preview.png"
  ];

  List<String> name = [
    "Sushi Octopus",
    "Salmon Sushi",
    " Mixed Sushi",
    "New Sushi"
  ];

  List<String> ingredients = [
    "Rice + Octopus",
    "Rice+ Salmon",
    "Rice +Octopus",
    "Salmon + Rice"
  ];

  List<double> price = [6.50, 5.60, 7.45, 3.54];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: imagePath.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                Container(
                  height: 200,
                  width: 140,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset(
                        imagePath[index],
                        height: 100,
                      ),
                      Text(
                        name[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ingredients[index],
                        style: TextStyle(color: Colors.blueGrey),
                      )
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}
