
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Zubair extends StatefulWidget {
  @override
  State<Zubair> createState() => _ZubairState();
}

class _ZubairState extends State<Zubair> {
  List img = ['assets/img_6706.jpg','assets/img_6707.jpg','assets/img_6709.jpg',
    'assets/img_6710.jpg','assets/img_6711.jpg','assets/img_6712.jpg','assets/img_6714.jpg',
    'assets/img_6722.jpg','assets/img_6723.jpg','assets/img_6724.jpg',
  ];

  @override
  Widget build(BuildContext context) {

  return Material(
    child: Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,right: 18,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.backspace_rounded),),
                IconButton(onPressed: (){
                }, icon: Icon(Icons.menu),),
              ],
            ),
            
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Messaging ID",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 25),),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Messaging ID",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),),
                Text("70 % ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 19),),
              ],
            ),
          ),
          Container(
            height: 5,
            color: Colors.black,
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("4 of 6 Completed",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Container(
                  width: 150,
                  height: 100,
                  // color: Colors.redAccent,
                 child: Container(
                   width: 150,
                   height: 110,
                   child: Card(
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         SizedBox(height: 6,),
                         Padding(
                           padding: const EdgeInsets.only(left: 11.0),
                           child: Text("17",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 33),),
                         ),

                         Padding(
                           padding: const EdgeInsets.only(left: 11.0),
                           child: Row(
                             children: [
                               SizedBox(height: 34,),
                               Icon(Icons.bookmark_add_outlined,size: 22,),

                               Text("Tasks finishid",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),

                             ],
                           ),
                         ),
                       ],
                     ),
                   ),
                 ),


                ),
                SizedBox(width: 13,),
                Container(
                  width: 150,
                  height: 100,
                  // color: Colors.orangeAccent,
                  child: Container(
                    width: 150,
                    height: 110,
                    child: Card(
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 6,),
                          Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Text("3,2",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 33),),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 11.0),
                            child: Row(
                              children: [
                                SizedBox(height: 34,),
                                Icon(Icons.watch_later,size: 22,),

                                Text("Tracked hour",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 17),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Over View",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
          ),


          SizedBox(height: 10,),

          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Over View we Over View we are slaso another back jomdnj djfjj d i wiil also do for biggnerrs com"
                "pOver View we are slaso anotheri wiil also do for biggnerrs compare slaso a"
                "nother back jomdnj djfjj d i wiil also do for biggnerrs completed",style: TextStyle(fontSize: 19,fontWeight: FontWeight.w300),),
          ),
          SizedBox(height: 14,),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text("Members Conected",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500),),
          ),
          SizedBox(height: 10,),
          Container(
            // color: Colors.orange,
            child: Row(
              children: [
                Container(
                  width: 360,
                  height: 80,
                  child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),

                      itemBuilder: (context,index){
                        return GestureDetector(
                          onTap: (){
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>));
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(350),
                              // border: Border.all(width: 2,color: Colors.black),
                              // color: Colors.redAccent,
                              image: DecorationImage(
                                image: AssetImage(img[index]),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }
}


