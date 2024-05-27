import 'package:flutter/material.dart';
import 'package:flutter_app/profile.dart';

void main() {
  runApp(const MyHomePage());
  }

  class MyHomePage extends StatefulWidget {
    const MyHomePage({super.key});

    @override
    State<MyHomePage> createState() => _MyHomePageState();
  }

  class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("MyHome Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Layar Home',),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: FloatingActionButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyProfilePage(),));
            }, child: const Icon(Icons.person_3)
            ),
          ),
          FloatingActionButton(
            onPressed: (){
              Navigator.pop(context);
            }, child: const Icon(Icons.logout),
          ),
        ],
      ),
    );
    }
  }