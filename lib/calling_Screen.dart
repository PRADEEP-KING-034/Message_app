import 'package:flutter/material.dart';
import 'package:message_app/ToMakeCall.dart';

class CHScreen extends StatefulWidget {
  const CHScreen({super.key});

  @override
  State<CHScreen> createState() => _CHScreenState();
}

class _CHScreenState extends State<CHScreen> {
  final callIdController = TextEditingController(text: "call_id");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter ID"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.only(left: 20,right: 20),
              child: TextFormField(
                controller: callIdController,
                decoration: InputDecoration(
                    hintText: "Enter User NAME",
                    border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Mycall(callID: callIdController.text);
                },));
              },
            )
          ],
        ),
      )
    );
  }
}
