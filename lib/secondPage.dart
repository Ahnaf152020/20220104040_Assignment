import 'package:flutter/material.dart';

class second_page extends StatefulWidget {
  @override
  State<second_page> createState() => _second_pageState();
}

class _second_pageState extends State<second_page> {
  String d_value = "Choose a payment method";
  String selection=" ";

  void pressed() {
    selection="Bkash";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Bkash')),
            // content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed1() {
    selection="Rocket";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Rocket')),
            //content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed2() {
    selection="Nagad";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected Nagad')),
            //content: Text('Payment Successful'),
          ),
        );
      },
    );
  }

  void pressed3() {
    selection="MasterCard";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected MasterCard')),
            //content: Text('Payment Successful'),
          ),
        );
      },
    );
  }



  @override
  Widget build(BuildContext context) {
    double screenW = MediaQuery.of(context).size.width;
    double screenH = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Payment Method",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.lime,
            fontSize: 20,
          ),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Column(
        children: [

          // Container(height: (70 / 872) * screenH),
          Center(
            child: Container(
              height: (716 / 802) * screenH,

              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(21),
                color: Colors.redAccent,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: (240/372)*screenW,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Center(
                      child: DropdownButton(
                        value: d_value,
                        borderRadius: BorderRadius.circular(15),
                        onChanged: (String? n_value) {
                          setState(() {
                            d_value = n_value!;
                          });
                        },
                        items: [
                          DropdownMenuItem<String>(
                              value: "Choose a payment method",
                              child: Text("Choose a payment method")),
                          DropdownMenuItem<String>(
                              value: "Cash on Delivery",
                              child: Text("Cash on Delivery")),
                          DropdownMenuItem<String>(
                              value: "Online Payment",
                              child: Text("Online Payment")),

                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: (50/872)*screenH,
                  ),

                  Container(
                    height: (620 / 872) * screenH,

                    decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                            children: [


                              Padding(
                                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Payment Methods : ",style: TextStyle(fontSize: 23,color: Colors.grey,fontWeight: FontWeight.bold),),
                              ),
                              Container(height: (50/872)*screenH,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  //Container(width: (0/392)*screenW,),
                                  Container(width: (90/373)*screenW,),
                                  GestureDetector(
                                      onTap: pressed,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),

                                          Image.asset(
                                            "Images/Bkash.png",
                                            height: 50 ,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),
                                          //Text("bkash",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),
                                  // Container(width: (90/373)*screenW,),
                                  GestureDetector(
                                      onTap: pressed1,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/Rocket.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),
                                         // Text("rocket",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed2,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/Nagad.webp",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),
                                          //Text("visa",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed3,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          SizedBox.fromSize(size: Size(0,0)),
                                          Image.asset(
                                            "Images/masterCard.png",
                                            height: 50,
                                            width: 50,
                                          ),
                                          SizedBox.fromSize(size: Size(0,0)),
                                         // Text("mastercard",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),


                                  Container(width: (90/373)*screenW,),



                                ],
                              ),
                            ]),
                        Container(
                          height: (70 / 872) * screenH,
                          //color: Colors.black54,

                        ),


                        Container(


                            width:screenW,
                            height: 80,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(30),

                            ),
                            child:
                            Row(
                              children: [
                                SizedBox.fromSize(size:Size((30/392)*screenW,0)),
                                GestureDetector (
                                  onTap: (){
                                    setState(() {
                                      if(selection==" " || d_value == "Choose a payment method")
                                      {
                                        showDialog(

                                          context: context,
                                          builder: (BuildContext context) {
                                            return Expanded(

                                              child: AlertDialog(

                                                content: Text('Ready to pay',),

                                              ),
                                            );
                                          },
                                        );
                                      }
                                      else
                                      {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return Expanded(
                                              child: AlertDialog(

                                                title: Center(child: Text('$selection ($d_value)')),


                                                content: Text('Payment Successful!'),

                                              ),
                                            );
                                          },
                                        );

                                      }

                                    });



                                  },



                                  child: Container(

                                    height: (50/872)*screenH,
                                    width:( 100/392)*screenW,
                                    decoration: BoxDecoration(
                                      color:Colors.white,
                                      borderRadius: BorderRadius.circular(19),
                                    ),
                                    child: Center(child: Text("Pay Now",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange),),),
                                  ),
                                ),

                                SizedBox.fromSize(size: Size((100/392)*screenW,0)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Bdt. 10,990 (Including Tax)",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange)),
                                    Row(
                                      children: [

                                        GestureDetector(
                                            onTap:(){Navigator.pop(context);},
                                            child: Container(

                                              height: (50/872)*screenH,
                                              width:( 100/392)*screenW,
                                              decoration: BoxDecoration(
                                                color:Colors.white,
                                                borderRadius: BorderRadius.circular(19),
                                              ),

                                            child:Center( child: Text("Go Back",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color:Colors.deepOrange)))),
                                            ),
                                      ],
                                    ),
                                  ],
                                )

                              ],
                            )





                        ),




                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}