import 'dart:io';

import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Utils/constant.dart';
import 'package:food_app/Widgets/HomeCategoryCard.dart';
import 'package:food_app/Widgets/RestauCard.dart';

class HomeTest extends StatefulWidget {
  @override
  _HomeTestState createState() => _HomeTestState();
}

class _HomeTestState extends State<HomeTest> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  ),
                  color: kPrimaryColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: new ColorFilter.mode(
                        kPrimaryColor.withOpacity(0.2), BlendMode.dstATop),
                    image: AssetImage("assets/images/homebg.jpg"),
                  ),
                ),
                child: Center(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 17,
                      vertical: 10,
                    ),
                    width: size.width * 0.75,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      enabled: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 23,
                        ),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(
                            Icons.search,
                          ),
                        ),
                        hintText: "Find your taste",
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: size.width,
                decoration: BoxDecoration(
                  color: kBgColor,
                ),
                child: Column(
                  children: [
                    Container(
                      width: size.width * 0.8,
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              size.width > 800 ? size.width * 0.15 : 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Home \n242, ST Marks Eve, Finland",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: size.width * .18,
                          ),
                          Icon(
                            Icons.room_preferences_outlined,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 35,
                      ),
                      width: size.width,
                      height: 170,
                      child: size.width > 800
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CategoryCard(
                                  bgColor: kSecondaryColor,
                                  imageUrl: "assets/images/AllCategory.png",
                                  text: "All",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/pizza.png",
                                  text: "Pizza",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/drink.png",
                                  text: "Bevarages",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/asian.png",
                                  text: "Asian",
                                ),
                              ],
                            )
                          : ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                CategoryCard(
                                  bgColor: kSecondaryColor,
                                  imageUrl: "assets/images/AllCategory.png",
                                  text: "All",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/pizza.png",
                                  text: "Pizza",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/drink.png",
                                  text: "Bevarages",
                                ),
                                CategoryCard(
                                  bgColor: Colors.white,
                                  imageUrl: "assets/images/asian.png",
                                  text: "Asian",
                                ),
                              ],
                            ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Nearest Restaurants",
                        style: kMenuTitle,
                      ),
                    ),
                    Container(
                      height: 200,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RestauCard(
                            imageUrl: "assets/images/food1.jpg",
                            title: "Westway",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food2.jpg",
                            title: "Fortune",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food3.jpg",
                            title: "Seafood",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food4.jpg",
                            title: "Lay Bhari",
                            rating: "4.6",
                            time: "15 min",
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Popular Restaurants",
                        style: kMenuTitle,
                      ),
                    ),
                    Container(
                      height: 200,
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 1),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          RestauCard(
                            imageUrl: "assets/images/food4.jpg",
                            title: "Moonland",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food5.jpg",
                            title: "Starfish",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food6.jpg",
                            title: "Fortune",
                            rating: "4.6",
                            time: "15 min",
                          ),
                          RestauCard(
                            imageUrl: "assets/images/food1.jpg",
                            title: "Lay Bhari",
                            rating: "4.6",
                            time: "15 min",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //   backgroundColor: Colors.red,
      //   selectedItemColor: Colors.black,
      //   unselectedItemColor: Colors.white,
      //   selectedFontSize: 14,
      //   selectedLabelStyle: TextStyle(color: Colors.black),
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      //   ],
      //   currentIndex: _currentIndex,
      //   onTap: (value) => {
      //     setState(() => {
      //           _currentIndex = value,
      //           print(_currentIndex),
      //         })
      //   },
      // ),
      extendBody: true,
    );
  }
}
