import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/screens/TaskPage.dart';
import 'package:to_do/widget.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
// -----------
final client = Dio();

Future<HomePage> getData() async {
  final url = 'api/v1/users/:user_id/tasks/:id';
  final response = await client.get(url);
}

//------------
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(image: AssetImage("assets/images/logoS.png")),
        title: Text("ToDo App",style: TextStyle(fontSize: 24.0,fontWeight: FontWeight.bold,color: Color(0xFF7349FF) ),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(24.0),
          color: Color(0xFFF6F6F6),
          child: Stack(children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Expanded(
                child: ListView(
                  children: [
                    TaskCardWidget(
                        title: "Get Started",
                        Desc: "Hello! how are you sir, i am todo app How can i help you"
                    ),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                    TaskCardWidget(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0.0,
            right: 0.0,
            child: GestureDetector(
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskPage())),
              child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                color: Color(0xFF7349FF),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Icon(Icons.add),
            ),
          ),
        )
        ],
      ),
    ),)
    ,
    );
  }
}
