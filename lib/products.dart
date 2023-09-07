import 'dart:math';
import 'package:fast_food/customText.dart';
import 'package:fast_food/productDetails.dart';
import 'package:flutter/material.dart';
import 'package:fast_food/home.dart';

class ProductPage extends StatelessWidget {
  final Product product;
  final FirstLine firstLine;
  final SecondLine secondLine;
  final ThirdLine thirdLine;
  final TouthLine touthLine;

  ProductPage(
      this.product,
      this.firstLine,
      this.secondLine,
      this.thirdLine,
      this.touthLine
  );

  final List detailproduct = [
    Detailproduct(
      title: 'Pizza',
      description: 'Description du produit 1',
      picture: 'assets/pizza_poulet.jpeg',
      price: 90,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            product.title,
          style: new TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF378DFC),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            Navigator.push(

              context,
              MaterialPageRoute(
                  builder: (context) => DetailProduct()
              ),
            );
            // Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context)) => DetailProduct(
            //    // assetPath: detailproduct.picture,
            //    // productdesc: detailproduct.description,
            //    //  productprice: detailproduct.price,
            // );
            // ),
          },
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Container(
                      // color: Colors.blueAccent,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5)
                      ),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: Image.asset(
                         firstLine.picture,
                         fit: BoxFit.cover,
                       ),
                     ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleText(firstLine.title),
                        DetailText(firstLine.description),
                        PriceText('Prix : ${firstLine.price} €'),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          secondLine.picture,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleText(secondLine.title),
                        DetailText(secondLine.description),
                        PriceText('Prix : ${secondLine.price} €')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child:ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          thirdLine.picture,
                          fit: BoxFit.cover,
                        ),
                      )
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleText(thirdLine.title),
                        DetailText(thirdLine.description),
                        PriceText('Prix : ${thirdLine.price} €')
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      width: MediaQuery.of(context).size.width/2.5,
                      height: MediaQuery.of(context).size.height/5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          touthLine.picture,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TitleText(touthLine.title),
                        DetailText(touthLine.description),
                        PriceText('Prix : ${touthLine.price} €')
                      ],
                    )
                  ],
                ),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 10.0),
                //       width: MediaQuery.of(context).size.width/2.5,
                //       height: MediaQuery.of(context).size.height/5,
                //       // borderRadius: BorderRadius.circular(10.0),
                //       child: Image.asset(
                //           pizza.picture,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         TitleText(product.title),
                //         DetailText(product.description),
                //         PriceText('Prix : ${product.price} €'),
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(height: 10.0,),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 10.0),
                //       width: MediaQuery.of(context).size.width/2.5,
                //       height: MediaQuery.of(context).size.height/5,
                //       // borderRadius: BorderRadius.circular(10.0),
                //       child: Image.asset(
                //           pizza.picture,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         TitleText(product.title),
                //         DetailText(product.description),
                //         PriceText('Prix : ${product.price} €'),
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(height: 10.0,),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 10.0),
                //       width: MediaQuery.of(context).size.width/2.5,
                //       height: MediaQuery.of(context).size.height/5,
                //       // borderRadius: BorderRadius.circular(10.0),
                //       child: Image.asset(
                //           pizza.picture,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         TitleText(product.title),
                //         DetailText(product.description),
                //         PriceText('Prix : ${product.price} €'),
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(height: 10.0,),
                // Row(
                //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Container(
                //       margin: EdgeInsets.only(left: 10.0),
                //       width: MediaQuery.of(context).size.width/2.5,
                //       height: MediaQuery.of(context).size.height/5,
                //       // borderRadius: BorderRadius.circular(10.0),
                //       child: Image.asset(
                //           pizza.picture,
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //     Column(
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         TitleText(product.title),
                //         DetailText(product.description),
                //         PriceText('Prix : ${product.price} €'),
                //       ],
                //     )
                //   ],
                // ),
                // SizedBox(height: 10.0,),
              ]
          ),
        )
   ),
  );
  }
}

class Detailproduct{
  final String title;
  final String description;
  final double price;
  final String picture;
  // List detailpictures;

  Detailproduct({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
  });
}
