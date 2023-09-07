import 'package:fast_food/customText.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class DetailProduct extends StatelessWidget {
  final assetPath, productdesc, productprice;

  DetailProduct({
    this.assetPath,
    this.productdesc,
    this.productprice,
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // photo.title,
          'AppBar',
          style: new TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF378DFC),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Text('Pizza', style: TextStyle(fontSize: 30),),
          ),
          Container(
            // color: Colors.red,
            width: MediaQuery.of(context).size.width/1.3,
            height: MediaQuery.of(context).size.height/3,
            child: Image.asset('assets/pizza_peperoni.JPG', fit: BoxFit.cover,),
          ),
          PriceText('\$5.99'),
          SizedBox(height: 15.0,),
          TitleText('Pizza coeur'),
          DetailText("Description"),
          Container(
            width: MediaQuery.of(context).size.width/1.2,
            height: 60.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Color(0xFF378DFC), width: 1)
                  ),
                ),
              ),
              onPressed: (){

              },
              child: Text(
                  'Buy it now',
                style: TextStyle(color: Color(0xFF378DFC), fontSize: 20),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width/1.2,
            height: 60.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF378DFC)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              onPressed: (){
              },
              child: Text(
                'Add to basket',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          SizedBox(height: 20.0,)
        ],
      )
      // ListView(
      //   children: [
      //     SizedBox(height: 15.0,),
      //     Padding(
      //         padding: EdgeInsets.only(left: 10.0),
      //         child: Text(
      //         'Product',
      //         style: TextStyle(
      //           fontSize: 42.0,
      //           fontWeight: FontWeight.bold,
      //           color:  Color(0xFF378DFC),
      //         ),
      //       ),
      //     ),
      //     SizedBox(height: 15.0,),
      //     Hero(
      //         tag: assetPath,
      //         child: Image.asset(
      //             assetPath,
      //           height: 150.0,
      //           width: 100.0,
      //           fit: BoxFit.contain,
      //         )
      //     )
      //   ],
      // )
    );
  }

}