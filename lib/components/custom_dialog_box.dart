import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomDialogBox extends StatefulWidget {
  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox> {
  late String taskText;

  void addTask() async {
    // Create a new Instance of Shared Prefernces
    final prefs = await SharedPreferences.getInstance();

    // Get Data from SharedPrefernces
    final todoListItemsText = prefs.getStringList('todoListItems') ?? [];

    todoListItemsText.add(taskText);

    // Add data to SharedPrefernces
    prefs.setStringList('todoListItems', todoListItemsText);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color(0xFF031956),
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
              ]),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Text(
                'ADD NEW ITEM',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8BA7EE),
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
                margin: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2.0, color: Color(0xCBC7C7B3)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: TextFormField(
                  onChanged: (value) {
                    taskText = value;
                  },
                  obscureText: false,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'new item',
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {
                        addTask();
                        Navigator.of(context).pop();
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          Color(0xFF8BA7EE),
                        ),
                      ),
                      child: Text(
                        'Add',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
