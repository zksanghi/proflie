




import 'package:flutter/material.dart';
import 'package:proflie/home.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({super.key});

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: TextFormField(
              onChanged: (value) {
                print(value);
                // usern = value;
              },
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: "Enter Your First Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  labelText: "Enter Your Passvered"),
              onChanged: (p) {
                // pass = p;
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              child: Text("LoginButton"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              },),
          )

        ],
      ),
    );
  }
}
