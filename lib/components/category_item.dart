import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final int tasksNumber;
  final String categoryName;

  const CategoryItem({required this.tasksNumber, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 15.0, 0.0, 15.0),
      width: 150.0,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Color(0xFF031956),
        boxShadow: [
          BoxShadow(
            color: Colors.black87.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 1,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            '$tasksNumber tasks',
            style: TextStyle(
                color: Color(0xFF8BA7EE),
                fontSize: 14.0,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            categoryName,
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
