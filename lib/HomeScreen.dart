import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MESSAGE OR CALL"),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "mlscreen");
                  },
                  child: const Text("Messaage")
              ),
              const SizedBox(width: 10,),
              const Text("or"),
              const SizedBox(width: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, "clscreen");
                  },
                  child: const Text("Call")
              ),
            ],
          )
        ],
      ),
    );
  }
}
