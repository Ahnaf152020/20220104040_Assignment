import 'package:flutter/material.dart';
import 'package:flutter_assignment20220104040/secondPage.dart';

class  FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Shop App",
          style: TextStyle(
    color:Colors.deepOrange,
    ),
          ),
          backgroundColor: Colors.indigoAccent,
        ),
        body:Column(
          children: [
            Container(
              height: (10/802),
            ),
            Container(
              height: (240/872),
              decoration: BoxDecoration(color: Colors.redAccent),
              child: Center(
                //child: Image.asset(name),
              ),
            )
          ],
        )
       /* body: Row(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:<Widget>[
              Text("Introduction to computer science\n"),

              //Image.asset('image/ui 3.jpg'),
              ElevatedButton( child: Text("Go to page 2"),

                onPressed: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondPage()));

                },
              ),
              Container(child: Text("Buy\n") ,color: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(20.0),)
            ]

        ),*/




      ),
    );

  }
}