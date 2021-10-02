import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/modules/task.dart';
import 'package:todo_list/provider/data_provider.dart';

class AddTaskScreen extends StatelessWidget {
  late String entredTaskName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF18244A),
          border: Border.all(
            color: Color(0xFF18244A),
          )),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 0.0),
        decoration: BoxDecoration(
          color: Color(0xFF344FA1),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(40.0),
            topLeft: Radius.circular(40.0),
          ),
        ),
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
              height: 10,
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
                  entredTaskName = value;
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
              alignment: Alignment.center,
              child: TextButton(
                  onPressed: () {
                    Provider.of<Data>(context, listen: false).addTak(
                      Task(name: entredTaskName),
                    );
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                    ),
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
          ],
        ),
      ),
    );
  }
}
