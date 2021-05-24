import 'package:flutter/material.dart';
import 'package:shopsushi/details_screen.dart';

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

  List<int> containerColor = [0xff12233c, 0xffffffff, 0xff12233c, 0xffffffff];

  List<int> textColor = [0xffffffff, 0xff12233c, 0xffffffff, 0xff12233c];

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
                            color: Color(textColor[index]),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ingredients[index],
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                r'$',
                                style: TextStyle(
                                    color: Color(textColor[index]),
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "${price[index]}",
                                style: TextStyle(
                                    color: Color(textColor[index]),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ButtonTheme(
                                minWidth: 20,
                                height: 20,
                                // ignore: deprecated_member_use
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => DetailsScreen()));
                                  },
                                  color: Color(0xff465465),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25)
                                  ),
                                  child: Text(
                                    "Order",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Color(containerColor[index]),
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            );
          }),
    );
  }
}
