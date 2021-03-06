import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class MyLiquidSwipe extends StatefulWidget {

  @override
  _MyLiquidSwipeState createState() => _MyLiquidSwipeState();
}

class _MyLiquidSwipeState extends State<MyLiquidSwipe> {
  var controller = LiquidController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liquid Swipe'),
        centerTitle: true,
      ),
      body: LiquidSwipe(
        pages: [
          myWidget('assets/imgs/squid_game1.jpg'),
          myWidget('assets/imgs/squid_game2.jpg'),
          myWidget('assets/imgs/squid_game3.jpg'),
        ],
        liquidController: controller,
      ),
    );
  }

  Widget myWidget(String image)=>
      Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              image,
              fit:BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 50.0,
            right: 10.0,
            child:Text(
              'SWIP LEFT',
              style: TextStyle(
                  color:Colors.white
              ),
            ),
          )
        ],
      );
}