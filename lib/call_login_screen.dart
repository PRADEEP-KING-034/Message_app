import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';
class CLScreen extends StatefulWidget {
  const CLScreen({super.key});

  @override
  State<CLScreen> createState() => _CLScreenState();
}

class _CLScreenState extends State<CLScreen> {

  final userId1 = TextEditingController();
  final userName1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Let's Connect Via Call",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: userId1,
              decoration: InputDecoration(
                  hintText: "Enter User ID",
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: userName1,
              decoration: InputDecoration(
                  hintText: "Enter User NAME",
                  border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () {
              Navigator.popAndPushNamed(context, "cscreen");
            },
          )
        ],
      ),
    );
  }
}
