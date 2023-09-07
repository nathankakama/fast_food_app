import 'package:flutter/material.dart';
import 'package:fast_food/products.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Product> products = [
    Product(
      title: 'Pizza',
      description: 'Description du produit 1',
      picture: 'assets/pizza_poulet.jpeg',
      price: 90,
    ),
    Product(
      title: 'Meat',
      description: 'Description du produit 2',
      picture: 'assets/plat_viande.jpg',
      price: 80,
    ),
    Product(
      title: 'Drink',
      description: 'Description du produit 3',
      picture: 'assets/soft_drunk.jpeg',
      price: 46,
    ),
    Product(
      title: 'Frittes',
      description: 'Description du produit 4',
      picture: 'assets/frites.jpeg',
      price: 110.0,
    ),
    Product(
      title: 'Hamburger',
      description: 'Description du produit 5',
      picture: 'assets/hamburger.jpeg',
      price: 23,
    ),
    Product(
      title: 'Spaghetti',
      description: 'Description du produit 6',
      picture: 'assets/spaghetti.jpeg',
      price: 44.0,
    ),
  ];
  final List firstLine = [
    FirstLine(
      title: 'Pizza',
      description: 'Description',
      picture: 'assets/pizza_poulet.jpeg',
      price: 90,
    ),
    FirstLine(
      title: 'Meat',
      description: 'Description',
      picture: 'assets/plat_viande.jpg',
      price: 80,
    ),
    FirstLine(
      title: 'Soft water',
      description: 'Description',
      picture: 'assets/eau.JPG',
      price: 46,
    ),
    FirstLine(
      title: 'Frittes',
      description: 'Description',
      picture: 'assets/frites.jpeg',
      price: 110.0,
    ),
    FirstLine(
      title: 'Hamburger',
      description: 'Description',
      picture: 'assets/hamburger.jpeg',
      price: 23,
    ),
    FirstLine(
      title: 'Spaghetti',
      description: 'Description',
      picture: 'assets/spaghetti.jpeg',
      price: 44.0,
    ),
  ];
  final List secondLine = [
    SecondLine(
      title: 'Pizza peperoni',
      description: 'Description',
      picture: 'assets/pizza_peperoni.JPG',
      price: 44.0,
    ),
    SecondLine(
      title: 'Cuisses',
      description: 'Description',
      picture: 'assets/poulet.jpg',
      price: 44.0,
    ),
    SecondLine(
      title: 'Coca Cola',
      description: 'Description',
      picture: 'assets/coca.JPG',
      price: 10.0,
    ),
    SecondLine(
      title: 'Plat frites',
      description: 'Description',
      picture: 'assets/plat_frite.JPG',
      price: 44.0,
    ),
    SecondLine(
      title: 'Double hamburger',
      description: 'Description',
      picture: 'assets/double_hamburger_frite.jpg',
      price: 9.0,
    ),
    SecondLine(
      title: 'Spaghetti saucisses',
      description: 'Description',
      picture: 'assets/spaghetti_saucisse.JPG',
      price: 44.0,
    ),
  ];
  final List thirdLine = [
    ThirdLine(
      title: 'Pizza viande',
      description: 'Description',
      picture: 'assets/pizza_viande.JPG',
      price: 44.0,
    ),
    ThirdLine(
      title: 'Poulet grillé',
      description: 'Description',
      picture: 'assets/poulet-3.png',
      price: 44.0,
    ),
    ThirdLine(
      title: 'Coca zéro',
      description: 'Description',
      picture: 'assets/coca_zero.JPG',
      price: 10.0,
    ),
    ThirdLine(
      title: 'Frites plus chicken',
      description: 'Description',
      picture: 'assets/frite_chicken.JPG',
      price: 44.0,
    ),
    ThirdLine(
      title: 'Hamburger plus frite',
      description: 'Description',
      picture: 'assets/hamburger_frite.JPG',
      price: 9.0,
    ),
    ThirdLine(
      title: 'Spaghetti à la viande',
      description: 'Description',
      picture: 'assets/sauce-aux-trois-viandes.jpeg',
      price: 44.0,
    ),
  ];
  final List touthLine = [
    TouthLine(
      title: 'Pizza coeur',
      description: 'Description',
      picture: 'assets/pizza_coeur.jpeg',
      price: 44.0,
    ),
    TouthLine(
      title: 'Viande',
      description: 'Description',
      picture: 'assets/viande.jpeg',
      price: 44.0,
    ),
    TouthLine(
      title: 'Fanta',
      description: 'Description',
      picture: 'assets/fanta.JPG',
      price: 10.0,
    ),
    TouthLine(
      title: 'Plat frites',
      description: 'Description',
      picture: 'assets/Frites-maison.jpeg',
      price: 44.0,
    ),
    TouthLine(
      title: 'Big Mac',
      description: 'Description',
      picture: 'assets/double_hamburger.jpeg',
      price: 9.0,
    ),
    TouthLine(
      title: 'Spaghetti plus sauce',
      description: 'Description',
      picture: 'assets/spaghetti_rio.jpeg',
      price: 44.0,
    ),
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color(0xFF378DFC),
        title: Text(
          "Toto's pizza",
          style: new TextStyle(
              color: Colors.white,
              fontSize: 23.0,
              fontFamily: 'Montserrat'
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications),
          )
        ],
        // iconTheme: ThemeData(Colo),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index){
            return GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProductPage(
                            products[index],
                            firstLine[index],
                            secondLine[index],
                            thirdLine[index],
                            touthLine[index],
                        )
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/4.5,
                      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      child: Image.asset(
                        products[index].picture,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text(
                      products[index].title,
                      style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                )
            );
          }
      ),
    );
  }
}

class Product{
  final String title;
  final String description;
  final double price;
  final String picture;
  // List detailpictures;

  Product({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
  });
}

class FirstLine{
  final String title;
  final String description;
  final double price;
  final String picture;

  FirstLine({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
    // required this.detailpictures,
  });
}
class SecondLine{
  final String title;
  final String description;
  final double price;
  final String picture;

  SecondLine({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
    // required this.detailpictures,
  });
}
class ThirdLine{
  final String title;
  final String description;
  final double price;
  final String picture;

  ThirdLine({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
    // required this.detailpictures,
  });
}
class TouthLine{
  final String title;
  final String description;
  final double price;
  final String picture;

  TouthLine({
    required this.title,
    required this.description,
    required this.price,
    required this.picture,
    // required this.detailpictures,
  });
}
