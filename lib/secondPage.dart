import 'package:flutter/material.dart';
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
    selection="Visa";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected VISA')),
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

  void pressed4() {
    selection="AMEX";
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Center(child: Text('Selected AMEX')),
            // content: Text('Payment Successful'),
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
            color: Colors.white,
            fontSize: 25,
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
              //width: (370 / 392) * screenW,
              decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(21),
                color: Colors.red,
              ),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    width: (240/372)*screenW,
                    decoration: BoxDecoration(
                      color: Colors.lime,
                      borderRadius: BorderRadius.circular(15),
                      // border: Border.all(width: 1,color: Colors.white),
                    ),
                    child: Center(
                      child: DropdownButton(
                        value: d_value,
                        borderRadius: BorderRadius.circular(21),
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
                      borderRadius: BorderRadius.circular(21),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Column(
                          //mainAxisAlignment: MainAxisAlignment.start,
                            children: [


                              Padding(
                                padding:  EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Text("Payment Methods : ",style: TextStyle(fontSize: 23,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                              ),
                              Container(height: (50/872)*screenH,),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  //Container(width: (0/392)*screenW,),
                                  Container(width: (90/373)*screenW,),
                                  GestureDetector(
                                      onTap: pressed,
                                      child: Row(
                                        children: [
                                          SizedBox.fromSize(size: Size((90/392)*screenW,0)),

                                          Image.asset(
                                            "assets/images/bkash.webp",
                                            height:  screenH,
                                            width:  screenW,
                                          ),
                                          SizedBox.fromSize(size: Size((20/392)*screenW,0)),
                                         // Text("bkash",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),
                                  // Container(width: (90/373)*screenW,),
                                  GestureDetector(
                                      onTap: pressed1,
                                      child: Row(
                                        children: [
                                          SizedBox.fromSize(size: Size((90/392)*screenW,0)),
                                          Image.asset(
                                            "assets/images/rocket.png",
                                            height: (60 / 872) * screenH,
                                            width: (60 / 372) * screenW,
                                          ),
                                          SizedBox.fromSize(size: Size((20/392)*screenW,0)),
                                         // Text("rocket",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed2,
                                      child: Row(
                                        children: [
                                          SizedBox.fromSize(size: Size((90/392)*screenW,0)),
                                          Image.asset(
                                            "assets/images/visa.png",
                                            height: (60 / 872) * screenH,
                                            width: (60 / 372) * screenW,
                                          ),
                                          SizedBox.fromSize(size: Size((20/392)*screenW,0)),
                                        //  Text("visa",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),




                                  GestureDetector(
                                      onTap: pressed3,
                                      child: Row(
                                        children: [
                                          SizedBox.fromSize(size: Size((90/392)*screenW,0)),
                                          Image.asset(
                                            "assets/images/mastercard.png",
                                            height: (60 / 872) * screenH,
                                            width: (60 / 372) * screenW,
                                          ),
                                          SizedBox.fromSize(size: Size((20/392)*screenW,0)),
                                         // Text("mastercard",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black54,),),
                                        ],
                                      )),


                                  Container(width: (90/373)*screenW,),
                                  GestureDetector(
                                      onTap: pressed4,
                                      child: Row(
                                        children: [
                                          SizedBox.fromSize(size: Size((90/392)*screenW,0)),
                                          Image.asset(
                                            "assets/images/amex.png",
                                            height: (60 / 872) * screenH,
                                            width: (60 / 372) * screenW,
                                          ),
                                          SizedBox.fromSize(size: Size((20/392)*screenW,0)),
                                         // Text("the american express",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black54,),),

                                        ],
                                      )),


                                ],
                              ),
                            ]),
                        Container(
                          height: (70 / 872) * screenH,
                          //color: Colors.black54,

                        ),


                        Container(


                            width:(screenW),
                            height: (120 / 872) * screenH,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(23),

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

                                                title: Center(child: Text('Please Select a payment method')),


                                                content: Text('Payment not Successful!'),

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
                                    width:0.1*screenW,
                                    decoration: BoxDecoration(
                                      color:Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                    child: Center(child: Text("Pay Now",style: TextStyle(fontWeight:FontWeight.bold),),),
                                  ),
                                ),
                                Icon(Icons.keyboard_double_arrow_right,color:Colors.white,size:30 ,),
                                SizedBox.fromSize(size: Size((0.01)*screenW,0)),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Bdt. 10,990",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color:Colors.white)),
                                    Container(width:30,),
                                    Column(
                                      children: [
                                        //Icon(Icons.arrow_back_ios_new,color:Colors.white70),
                                        GestureDetector(onTap:(){Navigator.pop(context);},
                                          child: Center( child: Text( "GO Back",style: TextStyle(fontWeight:FontWeight.bold),))),
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