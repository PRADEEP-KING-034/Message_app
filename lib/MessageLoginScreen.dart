import 'package:flutter/material.dart';
import 'package:zego_zimkit/zego_zimkit.dart';

class MLScreen extends StatefulWidget {
  const MLScreen({super.key});

  @override
  State<MLScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MLScreen> {

  final userId = TextEditingController();
  final userName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          "Let's Connect Via Message",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
        centerTitle: true,
        actions: [
          Container(
            child: IconButton(
              icon: Icon(Icons.info_outline),
              onPressed: () {},
            ),
          ),
          Container(
            child: IconButton(
              icon: const Icon(Icons.add_circle_rounded),
              onPressed: () {},
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: TextFormField(
              controller: userId,
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
              controller: userName,
              decoration: InputDecoration(
                hintText: "Enter User NAME",
                border: OutlineInputBorder()
              ),
            ),
          ),
          SizedBox(height: 30,),
          ElevatedButton(
            child: Text("Login"),
            onPressed: () async{
              ZIMKit().connectUser(id: userId.text,name: userName.text);
              Navigator.popAndPushNamed(context, "mscreen");
            },
          )
        ],
      ),
    );
  }
}
