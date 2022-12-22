import 'package:flutter/material.dart';
import 'package:testapp/util/coffee_tile_horizontal.dart';
import '../constants/coffee.dart';
import '../util/coffee_type.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  String isSelectedType = "All";
  final List coffeeType = [
    [
      'All',
      true,
    ],
    [
      'Cappuccino',
      false,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Coffee',
      false,
    ],
    [
      'Tea',
      false,
    ]
  ];

  void coffeeTypeSelected(index) {
    setState(() {
      for (int i = 0; i < coffeeType.length; i++) {
        coffeeType[i][1] = false;
      }
      coffeeType[index][1] = true;
      isSelectedType = coffeeType[index][0];
    });
    print(isSelectedType);
  }

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[900],
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                    coffeeName: coffeeType[index][0],
                    isSelected: coffeeType[index][1],
                    onTap: () {
                      coffeeTypeSelected(index);
                    },
                  );
                },
              ),
            ),
            Container(
              height: size.height * 0.75,
              width: size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: coffeeData.length,
                itemBuilder: (context, index) {
                  if (isSelectedType == "All") {
                    return CoffeeTileHorizontal(
                      coffeeImagePath: coffeeData[index].path,
                      coffeeName: coffeeData[index].name,
                      coffeePrice: coffeeData[index].price,
                      coffeeDescription: coffeeData[index].description,
                    );
                  }
                  if (isSelectedType.toLowerCase() ==
                      coffeeData[index].type.toLowerCase()) {
                    return CoffeeTileHorizontal(
                      coffeeImagePath: coffeeData[index].path,
                      coffeeName: coffeeData[index].name,
                      coffeePrice: coffeeData[index].price,
                      coffeeDescription: coffeeData[index].description,
                    );
                  } else {
                    return Container();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
