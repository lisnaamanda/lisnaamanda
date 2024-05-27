import 'package:flutter/material.dart';

void main() {
  runApp(const MyProfilePage());
  }

  class MyProfilePage extends StatefulWidget {
    const MyProfilePage({super.key});

    @override
    State<MyProfilePage> createState() => _MyProfilePage();
  }

  class _MyProfilePage extends State<MyProfilePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("My Profil Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Layar Profile Page",),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pop();
          }, child: const Icon(Icons.home),
        ),
      );
    }
  }