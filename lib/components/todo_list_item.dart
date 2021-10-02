import 'package:flutter/material.dart';

class TodoListItem extends StatelessWidget {
  final String text;
  final Color circleColor;
  late bool isChecked;
  final VoidCallback onPress;
  final VoidCallback onDelete;

  TodoListItem(
      {required this.text,
      required this.circleColor,
      required this.isChecked,
      required this.onPress,
      required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF344FA1),
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
      child: Container(
        padding: EdgeInsets.fromLTRB(15.0, 20.0, 20.0, 15.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(0xFF031956),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                isChecked
                    ? GestureDetector(
                        onTap: onPress,
                        child: Container(
                          padding: EdgeInsets.all(4.5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            color: circleColor,
                          ),
                          child: Icon(
                            Icons.check,
                            size: 15.0,
                            color: Colors.white,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: onPress,
                        child: Icon(
                          Icons.circle_outlined,
                          color: circleColor,
                        ),
                      ),
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            isChecked
                ? GestureDetector(
                    onTap: onDelete,
                    child: Icon(
                      Icons.close,
                      size: 23,
                      color: Colors.grey,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
