import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Color bgColor;
  final String imageUrl;
  final String text;
  const CategoryCard({
    Key key,
    this.bgColor,
    this.imageUrl,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Image(
                image: AssetImage(imageUrl),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }
}
