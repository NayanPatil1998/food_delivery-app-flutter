import 'package:flutter/material.dart';
import 'package:food_app/Utils/constant.dart';

class RestauCard extends StatelessWidget {
  const RestauCard({
    Key key,
    this.imageUrl,
    this.title,
    this.rating,
    this.time,
  }) : super(key: key);

  final String imageUrl;
  final String title;
  final String rating;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: kCardTitle,
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Icon(
                Icons.star,
                color: kPrimaryColor,
                size: 18,
              ),
              Text(rating),
              SizedBox(
                width: 8,
              ),
              Icon(
                Icons.timer,
                size: 15,
                color: Colors.grey.shade600,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                time,
                style: kSubTitle,
              )
            ],
          )
        ],
      ),
    );
  }
}
