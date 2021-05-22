import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  bool isFavorite = false;

  List<String> imagePath = [
    "images/salmonsushi.jpg",
    "images/caviarsushi.jpg",
    "images/ricesushi.jpg"
  ];

  List<String> categories = ["Salmon", "Caviar", "Rice"];

  Widget customRaisedButton(int buttonColor, int textColor, int units) {
    // ignore: deprecated_member_use
    return RaisedButton(
      onPressed: () {},
      color: Color(buttonColor),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Text(
        "$units units",
        style: TextStyle(color: Color(textColor), fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7eaf2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 50,
                      width: 40,
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 18,
                        color: Color(0xff122332),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 40,
                      child: Icon(
                        isFavorite ? Icons.favorite : Icons.favorite_outline,
                        size: 18,
                        color: Color(0xff122332),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Sushi Rolls",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Salmon Category"),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 125,
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star,
                    color: Color(0xff12233c),
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Color(0xff12233c),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 1,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: imagePath.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 60,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(imagePath[index]),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                categories[index],
                                style: TextStyle(color: Colors.blueGrey[800]),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      );
                    }),
              ),
              Image.asset("images/newsushi-removebg-preview.png"),
              Text("Choose the quantity"),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  customRaisedButton(0xff12233c, 0xffffffff, 6),
                  customRaisedButton(0xffffffff, 0xff12233c, 12),
                  customRaisedButton(0xffffffff, 0xff12233c, 24),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(30),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  r'$',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            Text(
                              "24",
                              style: TextStyle(
                                  fontSize: 35, color: Color(0xff12233c)),
                            ),
                            Column(
                              children: [
                                Text(
                                  ".00",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            )
                          ],
                        ),
                        Text("Total Price"),
                      ],
                    ),
                    // ignore: deprecated_member_use
                    ButtonTheme(
                      minWidth: 180,
                      height: 100,
                      child: RaisedButton(
                        onPressed: () {},
                        color: Color(0xff12233c),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                        ),
                        child: Row(
                          children: [
                            Text(
                              "Place Order",
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(
                              Icons.fastfood_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
