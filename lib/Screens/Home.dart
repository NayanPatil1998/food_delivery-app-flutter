import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:food_app/Utils/constant.dart';
import 'package:food_app/Widgets/HomeCategoryCard.dart';
import 'package:food_app/Widgets/RestauCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int _currentIndex = 0;

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBgColor,
      body: Container(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: size.height * 0.25,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60)),
                    color: kPrimaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          kPrimaryColor.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage("assets/images/homebg.jpg"),
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          kPrimaryColor.withOpacity(0.2), BlendMode.dstATop),
                      image: AssetImage("assets/images/homebg.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: size.height * 0.105,
              left: size.width * .125,
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
                    contentPadding: EdgeInsets.symmetric(vertical: 10),
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
            Positioned(
              top: size.height * .25,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: size.width,
                decoration: BoxDecoration(
                  color: kBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Home \n242, ST Marks Eve, Finland"),
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
                      child: ListView(
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
            )
          ],
        ),
      ),
      // bottomNavigationBar: FFNavigationBar(
      //   theme: FFNavigationBarTheme(
      //     barBackgroundColor: Colors.white,
      //     selectedItemBorderColor: Colors.yellow,
      //     selectedItemBackgroundColor: Colors.green,
      //     selectedItemIconColor: Colors.white,
      //     selectedItemLabelColor: Colors.black,
      //   ),
      //   selectedIndex: _currentIndex,
      //   onSelectTab: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     FFNavigationBarItem(
      //       iconData: Icons.calendar_today,
      //       label: 'Schedule',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.people,
      //       label: 'Contacts',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.attach_money,
      //       label: 'Bills',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.note,
      //       label: 'Notes',
      //     ),
      //     FFNavigationBarItem(
      //       iconData: Icons.settings,
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
      extendBody: true,
    );
  }
}
