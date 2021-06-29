import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentTab = 0;
  List<dynamic> img = [
    Icons.inventory,
    Icons.tv,
    Icons.fitness_center,
    Icons.house,
    Icons.arrow_forward,
  ];

  List<dynamic> name = [
    "Clothes",
    "Electronic",
    "Equipment",
    "Household",
    "Others",
  ];

  List<dynamic> images = [
    "assets/iphone.jpg",
    "assets/note20.jpg",
    "assets/macbookair.jpg",
    "assets/macbook.jpg",
    "assets/gamingpc.jpg",
    "assets/backlit.jpg",
    "assets/mercedes.jpg",
    "assets/Mutton.jpg",
  ];

  List<dynamic> msg = [
    "Iphone 12",
    "Note 20",
    "Macbook Air",
    "Macbook Pro",
    "Gaming PC",
    "Backlit",
    "Mercedes",
    "Mutton",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Center(
          child: Text(
            "Ecom App UI",
            style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 4.5,
        actions: [
          Icon(Icons.notifications, color: Colors.black),
          Padding(
            padding: EdgeInsets.only(right: 10),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "View More",
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 16,
                        color: Colors.purple,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/macbookpro.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 7),
                      child: Text(
                        "Macbook Pro",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: 15,
                          ),
                          Text(
                            " 5.0 (23 Reviews)",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "More Categories",
                    style: TextStyle(
                        letterSpacing: -1,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  )),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: 70,
                ),
                child: ListView.builder(
                  itemCount: name.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 140,
                      child: Card(
                        child: ListTile(
                          minLeadingWidth: 10,
                          minVerticalPadding: 0,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          leading: Icon(
                            img[index],
                            color: Colors.purple,
                          ),
                          title: Text(
                            "${name[index]}",
                            style: TextStyle(
                                height: 0.8,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            "5 items",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Items",
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "View More",
                      style: TextStyle(
                          letterSpacing: -1,
                          fontSize: 16,
                          color: Colors.purple,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 5,
                mainAxisSpacing: 15,
                children: List.generate(msg.length, (index) {
                  return Card(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 80,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("${images[index]}"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          Text(
                            "${msg[index]}",
                            style: TextStyle(
                              letterSpacing: -1,
                              fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 10,
                              ),
                              Text(
                                " 5.0 (23 Reviews)",
                                style: TextStyle(
                                  letterSpacing: -1,
                                    fontSize: 11,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        // shape: CircularNotchedRectangle(),
        // notchMargin: 0,
        child: Container(
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 0;
                      });
                    },
                    child: Icon(Icons.home,
                        color: currentTab == 0 ? Colors.purple : Colors.grey),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 1;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: currentTab == 1 ? Colors.purple : Colors.grey),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    child: Icon(Icons.add_shopping_cart,
                        color: currentTab == 2 ? Colors.purple : Colors.grey),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: Icon(Icons.person,
                        color: currentTab == 3 ? Colors.purple : Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
