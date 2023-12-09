import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Task3/AdvancedList.dart';
import 'package:untitled/mode/Mo000.dart';
import 'package:untitled/mode/listview.dart';
import 'package:untitled/Task3/textform.dart';

import '../mode/instgreampost.dart';

class Insta extends StatefulWidget {
     Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
    int currentIndex = 0;

    List<Widget> screens = [
       AlistScreen(),
       TextFormScreen(),
      Mo000Screen(),
      ListScreen(),
    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
       selectedItemColor: Colors.white,
         unselectedItemColor: Colors.grey,
         currentIndex: currentIndex,
         onTap: (value){
         setState(() {
           currentIndex = value;
         });

         },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home,
           ),
             label: 'Home',
             backgroundColor: Colors.purple,

           ),
           BottomNavigationBarItem(icon: Icon(Icons.search,
           ),
             label: 'Search',
             backgroundColor: Colors.pink,
           ),
           BottomNavigationBarItem(icon: Icon(Icons.real_estate_agent_sharp,
           ),
             label: 'Reels',
             backgroundColor: Colors.green,
           ),
           BottomNavigationBarItem(icon: Icon(Icons.storefront_sharp,
           ),
             label: 'Store',
             backgroundColor: Colors.blue,
           ),
         ],
       ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Instgram',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            Icon(Icons.arrow_drop_down,),
          ],
        ),
        actions: [
          Icon(Icons.add_box_outlined,
          size: 25,
            color: Colors.white,
          ),
          SizedBox(width: 10,),
          IntrinsicWidth(
            child: Stack(
              alignment: AlignmentDirectional.center,
                children:[
                  Icon(Icons.favorite,
                  size: 25,
                  color: Colors.white,
                ),
                PositionedDirectional(
                  top: 10,
                  end: 0,
                  child:
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 5,
                    ),
                  ),
                ],
              ),
          ),
          SizedBox(width: 10,),
          IntrinsicWidth(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children:[
                Icon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 25,
                  color: Colors.white,
                ),
                PositionedDirectional(
                  top: 10,
                  end: 0,
                  child:
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Text('6',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                    ),),
                    radius: 6,
                  ),
                ),
              ],
            ),
          ),

        SizedBox(width: 20,),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(

          children: [

            Padding(
              padding: EdgeInsetsDirectional.only(start: 12,end: 12,),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage:Image.network('https://www.freepik.com/free-ai-image/3d-illustration-cartoon-female-tourist-with-camera_65675680.htm#fromView=search&term=png&page=1&position=1&track=ais_ai_generated&regularType=ai&uuid=777d9b3f-bb77-4a75-b7f2-eb65a504e7d8',
                      width: 100,
                      height: 100,
                    ).image,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text('Mohamed.Coder',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Icon(Icons.more_horiz_outlined,
                    color: Colors.white,
                    size: 20,
                  ),
                ],
              ),
            ),
            Image(image: AssetImage('images/111.png',
            ),
              width: double.infinity,

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8,),
                    Icon(FontAwesomeIcons.comment,
                      size: 20,
                      color: Colors.white,
                    ),
                    SizedBox(width: 8,),

                    Icon(Icons.send,
                      size: 20,
                      color: Colors.white,
                    ),
                  ],
                ),


                Row(
                  children: [
                    Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.white,
                      size: 40,
                    ),
                  ],
                ),

                Icon(Icons.bookmark,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              padding: EdgeInsets.all(12),

              child: Column(
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('images/111.png',
                        ),
                        radius: 5,
                      ),
                      SizedBox(width: 5,),
                      Text('liked by ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                      Text('Mohamed Hassan ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),
                      Text('and others ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Mohamed Hassan ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                        ),
                      ),

                      Text('Flutter Groub 113 is brave ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      TextButton(onPressed: (){},
                        child: Text(
                          'View 1 comment',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5,),
                ],
              ),
            ),


          ],
        ),

      ),

    );
  }
}



