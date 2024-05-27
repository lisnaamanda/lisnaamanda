import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MaterialApp(title: "Aplikasi", home: MyLoginPage()));
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}
class _MyLoginPageState extends State <MyLoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 0.5* MediaQuery.of (context).size.width,
          child: Form(child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextFormField(controller: username, decoration: InputDecoration(hintText: "User Id"),),
              TextFormField(controller: password, obscureText: true, decoration: InputDecoration(hintText: "Password"),),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyHomePage(),));
                    }, child: Text("Login"), style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder()),)
                  ],
                ),
              )
            ],
          ),),
        ),
      ),
    );
  }
}