import 'package:flutter/material.dart';
import '../constants/coffee.dart';
import '../util/coffee_tile.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  String isSelectedName = "";


  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Finding the best coffee for you",
              style: TextStyle(fontSize: 60, fontFamily: 'bebasNeue'),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Find your coffee",
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade600)),
              ),
              onChanged: (value) {
                setState(() {
                  isSelectedName = value.toLowerCase();
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: size.height*0.5,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: coffeeData.length,
              itemBuilder: (context, index) {
                if (coffeeData[index].name.contains(
                    RegExp(isSelectedName.trim(), caseSensitive: false))) {
                  return CoffeeTile(
                    coffeeImagePath: coffeeData[index].path,
                    coffeeName: coffeeData[index].name,
                    coffeePrice: coffeeData[index].price,
                    coffeeDescription: coffeeData[index].description,
                  );
                }
                if (isSelectedName.isEmpty) {
                  return CoffeeTile(
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
    );
  }
}
