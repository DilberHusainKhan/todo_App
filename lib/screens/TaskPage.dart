import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0,bottom: 6.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.pop(context);
                        },
                      child: Padding(
                        padding:EdgeInsets.all(20.0),
                          child: IconButton(icon: Icon(Icons.arrow_back),)),
                    ),
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add to the List",
                        border: InputBorder.none,
                      ),
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF211551),
                      ),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0,),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Description here...",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
