import "package:flutter/material.dart";
import 'package:testapp/pages/details_page.dart';

class CoffeeTile extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  final String coffeeDescription;

  CoffeeTile(
      {required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeeDescription,
      required this.coffeePrice});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 20, bottom: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsPage(
                        coffeeImagePath: coffeeImagePath,
                        coffeeName: coffeeName,
                        coffeePrice: coffeePrice,
                        coffeeDescription: coffeeDescription,
                      )));
        },
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.black54,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0), //add border radius
                child: Image.asset(
                  coffeeImagePath,
                  height: size.height * 0.30,
                  width: size.width * 0.45,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      coffeeName,
                      style: TextStyle(fontSize: 25, fontFamily: 'bebasNeue'),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      height: 40,
                      width: size.width * 0.4,
                      child: Text(
                        coffeeDescription,
                        overflow: TextOverflow.ellipsis,
                        softWrap: false,
                        maxLines: 2,
                        style: TextStyle(
                          color: Colors.grey[700],
                          height: 1.2,
                          fontFamily: 'concertOne',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                child: Row(
                  children: [
                    Text(
                      r'$ ',
                      style: TextStyle(
                        color: Color(0xffd17842),
                        fontFamily: 'concertOne',
                      ),
                    ),
                    Text(
                      coffeePrice,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'concertOne',
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
