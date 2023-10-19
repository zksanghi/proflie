
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proflie/Moduls/allproducts_model.dart';
class Profile extends StatefulWidget {
  // final Product pml;
  //
  // const Profile({super.key, required this.pml});
  @override
  State<Profile> createState() => _ProfileState();
}
class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        title: Text("My Profile"),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          SizedBox(height: 60,),
          Container(
            width: 120,
            height: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image(image: AssetImage("assets/img_6714.jpg"),),
            ),
          ),
          SizedBox(height: 6,),
          Center(child: Text("Zubair",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),)),
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(left: 80,right: 80),
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red,),
              child: Text("Edit profile",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w500,),),
            ),
          ),

          SizedBox(height: 20,),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.settings,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Setting"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.supervisor_account_outlined,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("My account"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.article_rounded,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Documint"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.contact_phone_outlined,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Contect"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.device_thermostat_sharp,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Details"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.question_mark_outlined,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Question"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.lightBlue,
              ),
              child: IconButton(
                icon: Icon(Icons.logout,size: 30,),
                padding: EdgeInsets.only(right: 1,),
                onPressed: (){
                },
              ),

            ),
            title: Text("Log Out"),
            trailing: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.red
              ),
              child: IconButton(
                icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                onPressed: (){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
