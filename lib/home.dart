import 'package:http/http.dart'as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proflie/Apis/apis.dart';
import 'package:proflie/Moduls/allproducts_model.dart';
import 'package:proflie/profile.dart';
import 'package:proflie/zubair.dart';


class Home extends StatefulWidget {
  // var pml;

  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images = ['assets/img_6706.jpg','assets/img_6707.jpg','assets/img_6709.jpg',
    'assets/img_6710.jpg','assets/img_6711.jpg','assets/img_6712.jpg','assets/img_6714.jpg',
  'assets/img_6722.jpg','assets/img_6723.jpg','assets/img_6724.jpg',
  ];

//
//
//   late AllProductsofModel myproducts;
//   bool loader = true;
//
// void allproducts ()async{
//   // myproducts = await MyAppies.insttance.GetAllProductsModel();
//   myproducts = await MyAppies.insttance.GetAllProductsModel();
//   loader = false;
//
//   setState(() {
//   });
// }

// @override
//   void initState() {
//     // TODO: implement initState
//   AllProductsofModel();
//     super.initState();
//   }

  @override
  Widget build(BuildContext context) {
  return Material(
    child: Scaffold(
      appBar: AppBar(
        leading: GestureDetector(child: CircleAvatar(backgroundImage: AssetImage("assets/img_6714.jpg"),),
        onTap:(){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
          Navigator.pop(context);
        },
        ),
        title: Text("Hi , kiral"),
        centerTitle: false,
        actions: [
           IconButton(onPressed: (){

           }, icon: Icon(Icons.notification_important)),

        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20,),

               Padding(
                 padding: const EdgeInsets.only(left: 12.0),
                 child: Text("Task for to day :",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 22),),
               ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Row(
                children: [
                  Icon(Icons.star,size: 22,color: Colors.orange,),
                  Text("available",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Search",
                  hintText: "Search",
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Last connection",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text("Sea all",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),),
                ],

              ),
            ),
            Container(
              // color: Colors.orange,
              child: Row(
                children: [
                  Container(
                    width: 360,
                    height: 80,
                    child: ListView.builder(
                      itemCount: 19,

                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),

                        itemBuilder: (context,index){
                        // var p = myproducts.products ;

                      return GestureDetector(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()));
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 100,
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(350),
                            border: Border.all(width: 2,color: Colors.black),
                            color: Colors.redAccent,
                            image: DecorationImage(
                              image: AssetImage("assets/img_6714.jpg"),
                            ),
                          ),
                        ),
                      );
                    }),
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 18.0,right: 18,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Active Project",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                  Text("Sea All",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                ],
              ),
            ),
            Container(
              // color: Colors.cyan,
              child: Container(
                height: 274,
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                  return Container(
                    height: 130,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10,),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13)
                        ),
                        child: const Column(

                          crossAxisAlignment: CrossAxisAlignment.start,


                          children: [

                            Padding(
                              padding: EdgeInsets.only(left: 12.0,right: 14,top: 12),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(child: Image(image: AssetImage("assets/img_6711.jpg")),),
                                  Text("Numero  10",style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600
                                  ),),
                                  Text("4h",style:TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                  // SizedBox(height: 10,),

                                ],
                              ),



                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 12.0,top: 3),
                              child: Text("Blog and social post",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 9.0,top: 12,),
                              child: Row(
                                children: [
                                  Icon(Icons.error_outline,size: 22,),
                                  SizedBox(width: 5,),
                                  Text("Dead line is today",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Container(
              child: ElevatedButton(
                  child: Text("fffffffffffff"),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Zubair()));
                  },),
            )
          ],
        ),
      ),

  );
  }
}


