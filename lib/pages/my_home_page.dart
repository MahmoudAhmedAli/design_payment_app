import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:paymentapp/component/colors.dart';
import 'package:paymentapp/pages/payment_page.dart';
import 'package:paymentapp/widgets/buttons.dart';
import 'package:paymentapp/widgets/large_button.dart';
import 'package:paymentapp/widgets/text_size%20.dart';
import 'package:get/get.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      body: Container(
        height: h,
        child: Stack(
          children: [
            _headSection(),
            _listBills(),
            _payButton(),



          ],
        ),

      ),
    );
  }
  _headSection(){
    return Container(
      height: 220,

      color: Colors.white,
      child: Stack(
        children: [
          _mainBackground(),
          _curvImageContainer(),
          _buttonContainer(),
          _textContainer(),
        ],
      ),
    );
  }
  _buttonContainer(){
    return Positioned(
      bottom: 8,
        right: 45 ,
        child: GestureDetector(
          onTap: (){
            showModalBottomSheet<dynamic>(
              isScrollControlled: true,
              barrierColor: Colors.transparent,
              backgroundColor: Colors.transparent,
                context: context, builder:(BuildContext bc){
              return Container(
                height: MediaQuery.of(context).size.height-153,
                child: Stack(
                  children: [
                    Positioned(
                        bottom: 0,

                        child:Container(
                      color: Colors.grey.withOpacity(0.7),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height-220,

                    )),
                    Positioned(
                        right: 45,
                        child:Container(
                            padding:const EdgeInsets.only(top: 7,bottom: 20) ,
                      width: 60,
                      height: 220,
                      decoration: BoxDecoration(
                        color: AppColor.mainColor,
                        borderRadius: BorderRadius.circular(29)
                      ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                            children: [
                              AppButtons(icon: Icons.cancel,
                              iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onPress: (){Navigator.pop(context);},

                              ),
                              AppButtons(icon: Icons.add,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onPress: (){},
                                text: "add Bill",

                              ),
                              AppButtons(icon: Icons.history,
                                iconColor: AppColor.mainColor,
                                textColor: Colors.white,
                                backgroundColor: Colors.white,
                                onPress: (){},
                                text: "History",

                              ),
                              
                            ],
                          ),
                    ) )
                  ],
                ),

              );
            });
          },
          child: Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "images/lines.png"
                )
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 15,
                  offset: Offset(0,1),
                  color: Color(0xFF11324d).withOpacity(0.2)
                )
              ]
            ),
          ),
        )
    );
  }
  _mainBackground(){

    return Positioned(
      bottom: 10,
        left: 0,
        child: Container(
          height: 290,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/background.png"
              )
            )

          ),
        )
    );
  }
  _curvImageContainer(){
      return Positioned(
        left:0,
           right:-2,
           bottom: 10,
           child:Container(

             height: MediaQuery.of(context).size.height*0.1,
             decoration: BoxDecoration(
               image:DecorationImage(
                  fit: BoxFit.cover,
                 image:AssetImage(
                   "images/curve.png"
                 )
               )
             ),
           )
      );

  }
  _listBills() {
    return Positioned(
      top: 220,
        left: 0,
        right: 0,
        bottom: 0,
        child: MediaQuery.removePadding(
          removeTop: true,
          context: context,
          child: ListView.builder(
              itemCount: 3 ,
            itemBuilder: (_,index){
              return  Container(
              margin: const EdgeInsets.only(top:20, right: 20),
              height: 120,
              width: MediaQuery.of(context).size.width-20,
              decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              bottomRight: Radius.circular(30)
              ),
              boxShadow: [
              BoxShadow(
              color: Color(0xFFd8dbe0),
              offset: Offset(1 , 1),
              blurRadius: 20.0,
              spreadRadius: 10
              )
              ]
              ),
              child: Container(
              margin: const EdgeInsets.only(top:10,left:18) ,
              child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Row(
              children: [
              Container(
              height: 60,
              width:60,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
              width:3,
              color: Colors.grey
              ),
              image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
              "images/brand1.png"
              )
              )
              ),
              ),
              SizedBox(width: 10,),
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              "mahmoud Ahmed",
              style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w700
              ),
              ),
              SizedBox(height: 10,),
              Text(
              "ID: 22102000",
              style: TextStyle(
              fontSize: 16,
              color: Colors.deepPurpleAccent,
              fontWeight: FontWeight.w700
              ),
              )
              ],
              ),

              ],

              ),
              SizedText(text:"hello ever body hello every one",color: Colors.green,),
              SizedBox(height: 5,)
              ],
              ),
              Row(
              children: [
              Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Container(
              width: 80,
              height: 30,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black87
              ),
              child:Center(
              child: Text(
              "Select",
              style: TextStyle(
              fontSize: 16,
              color: Colors.white
              ),
              ),
              )
              ),
              Expanded(child: Container()),
              Text(
              "\$15.00",
              style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
              ),
              ),
              Text(
              "Due in 3 days",
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black
              ),
              ),
              SizedBox(height: 10,)
              ],
              ),
              SizedBox(width: 5,),
              Container(
              width: 5,
              height: 35,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30)
              )
              ),
              ),
              ],
              )
              ],
              ),
              ),

              );
            },

          ),
        ),
    );

  }
  _payButton(){
    return Positioned(
      bottom: 20,
        child: AppLargeButton(text: "pay all bills",textColor: Colors.white,onPress: (){Get.to(()=>PaymentPage());},)
    );
  }
  _textContainer(){
    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 100,
            child:Text(
              "My Bills",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293952).withOpacity(0.5),
              ),
            )
        ),
        Positioned(
            left: 30,
            top: 80,
            child:Text(
              "My Bills",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )
        ),
      ],
    );
  }
}
