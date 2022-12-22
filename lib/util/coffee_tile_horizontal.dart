import "package:flutter/material.dart";
import 'package:testapp/pages/details_page.dart';

class CoffeeTileHorizontal extends StatelessWidget {
  final String coffeeImagePath;
  final String coffeeName;
  final String coffeePrice;
  final String coffeeDescription;

  CoffeeTileHorizontal(
      {required this.coffeeImagePath,
      required this.coffeeName,
      required this.coffeeDescription,
      required this.coffeePrice});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
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
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.black54,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  //add border radius
                  child: Image.asset(
                    coffeeImagePath,
                    height: 100,
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coffeeName,
                        style: TextStyle(fontSize: 20, fontFamily: 'bebasNeue'),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Container(
                        height: 40,
                        width: size.width * 0.5,
                        child: Text(coffeeDescription,
                            overflow: TextOverflow.ellipsis,
                            softWrap: false,
                            maxLines: 2,
                            style: TextStyle(
                              height: 1,
                              color: Colors.grey[700],
                              fontFamily: 'concertOne',
                            )
                            // style: TextStyle(color: Colors.grey[700]),
                            ),
                      ),
                      Row(
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
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
