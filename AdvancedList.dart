import 'package:flutter/material.dart';

class AlistScreen extends StatelessWidget {
   AlistScreen({super.key});
    List People = [
      {
        'name' : 'Mohamed1',
        'Age' : '29',
        'time' : '2:52',
        'message' : 'Welcome To Dart'
      },
      {
        'name' : 'Ahmed2',
        'Age' : '28',
        'time' : '3:20',
        'message' : 'Welcome To Paython'
      },
      {
        'name' : 'Karim3',
        'Age' : '27',
        'time' : '10:40',
        'message' : 'Welcome To Flutter'
      },
      {
        'name' : 'Moaz4',
        'Age' : '26',
        'time' : '11:08',
        'message' : 'Welcome To Kotlin'
      },
      {
        'name' : 'Sayed5',
        'Age' : '25',
        'time' : '1:20',
        'message' : 'Welcome To CS'
      },
      {
        'name' : 'Noor6',
        'Age' : '24',
        'time' : '11:18',
        'message' : 'Welcome To CSharp'
      },
      {
        'name' : 'Tarek7',
        'Age' : '23',
        'time' : '11:12',
        'message' : 'Welcome To Html'
      },
      {
        'name' : 'Mostafa8',
        'Age' : '22',
        'time' : '11:35',
        'message' : 'Welcome To Css'
      },
      {
        'name' : 'Omer9',
        'Age' : '21',
        'time' : '12:20',
        'message' : 'Welcome To Cplus'
      },
      {
        'name' : 'Ezz10',
        'Age' : '20',
        'time' : '11:20',
        'message' : 'Welcome To It'
      },
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

     appBar: AppBar(
       backgroundColor: Colors.blue,
     ),
      body:

      SingleChildScrollView(
        child: Column(

        children: [
        Text('Messengers',
        style:TextStyle(
          color: Colors.white,
          fontSize: 25,
        ),
        ),
    SizedBox(height: 20,),
    SizedBox(height: 120,
    child: ListView.builder(
    scrollDirection: Axis.horizontal,
    padding:EdgeInsetsDirectional.all(8),
    itemBuilder: (context,index){
    return Column(
    children: [
    CircleAvatar(
    backgroundColor: Colors.white,
    radius: 35,
    backgroundImage:Image.asset('images/000.png',).image
    ),
    SizedBox(height: 3,),
      Text(People[index]['name'],
      style: TextStyle(
      color: Colors.white,
      ),
      ),
    ],
    );
    },

    itemCount: 6,
    ),
    ),

      ListView.builder(
        shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context , index){
            return Row(
              children:[
                CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 35,
                    backgroundImage: Image.asset('images/000.png',).image
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(People[index]['name'],
                            style: TextStyle(
                              color: Colors.white,
                            ),

                          ),
                        ],
                      ),
                      SizedBox(height: 8,),
                      Row(children: [
                        Expanded(
                          child: Text(People[index]['message'],
                       style: TextStyle(
                          color: Colors.white,
                          ),
                          ),
                        ),
                      //  SizedBox(width: 60,),
                        Text(People[index]['time'],

                        style: TextStyle(
                        color: Colors.white,
                        ),
                        ),
                      ],
                      ),
                    ],
                  ),
                ),
              ],
            );;
          },


        itemCount: People.length,
      ),
      ]
    ),
    ),
    );
  }
}
