import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        width: 200,
        child: Drawer(
          child: ListView(
            children: [
              Container(
                height: 200,
                color: Color(0xff12233c),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/newmegha.jpg"),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Megha Sharma",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Sushi all time!",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.home),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Home"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.fastfood),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Orders"),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Favorites"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xffe7eaf2),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      backgroundColor: Color(0xffe7eaf2),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "👋",
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    "Hi Megha!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "What is your\nfavorite sushi?",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,

                ),
              ),
              SizedBox(height: 25,),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  margin: EdgeInsets.only(bottom: 6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0),
                        blurRadius: 3.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search your sushi",
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey[600],
                      )
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}