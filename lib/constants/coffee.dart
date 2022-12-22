import 'package:flutter/material.dart';

class Coffee {
  final String path, name, price, type, description;

  Coffee({
    required this.path,
    required this.type,
    required this.description,
    required this.name,
    required this.price,
  });
}

List<Coffee> coffeeData = [
  Coffee(
      name: 'CAPPUCCINO',
      path: 'lib/images/cappa2.jpg',
      price: '4.00',
      type: 'Cappuccino',
      description: "Cappuccinos are a fan favorite when visiting coffee shops. This is especially the case because of the latte art decorations that are often drawn into the steamed milk foam."),
  Coffee(
      name: 'Ice Latte',
      path: 'lib/images/latte.jpg',
      price: '2.00',
      type: 'Latte',
      description: "Lattes are among the most popular coffee choices. Anything from sweet to herbal can be added to them, and latte art can be added to complete the drink. Lattes are similar to cappuccinos because they are also made with espresso, steamed milk, and milk foam."),
  Coffee(
      name: 'Americano',
      path: 'lib/images/coffee2.jpg',
      price: '1.20',
      type: 'Coffee',
      description: "An Americano is a shot of espresso that is diluted with hot water and completed with a light layer of cream at the top.Americanos are rich, intense, and distinctive in taste. The strength of the drink is dependent on the number of espresso shots you add."),
  Coffee(
      name: 'Tea',
      path: 'lib/images/tea.jpg',
      price: '1.00',
      type: 'Tea',
      description: "Tea, beverage produced by steeping in freshly boiled water the young leaves and leaf buds of the tea plant, Camellia sinensis."),
  Coffee(
      name: 'Cortado',
      path: 'lib/images/cappa.jpg',
      price: '5.00',
      type: 'Cappuccino',
      description: "Cortado is a much loved coffee drink in Portugal, Spain and Latin America, and is usually enjoyed as an afternoon drink. This drink is prepared with espresso and steamed milk, to decrease the level of acidity in it."),
  Coffee(
      name: 'Latte',
      path: 'lib/images/latte2.jpg',
      price: '2.50',
      type: 'Latte',
      description: "Lattes are among the most popular coffee choices. Anything from sweet to herbal can be added to them, and latte art can be added to complete the drink. Lattes are similar to cappuccinos because they are also made with espresso, steamed milk, and milk foam."),
  Coffee(
      name: 'Espresso',
      path: 'lib/images/coffee.jpg',
      price: '1.00',
      type: 'Coffee',
      description: "Espresso is a form of concentrated coffee that is usually served as shots. All espresso based drinks have three common ingredients: espresso, steamed milk and foam."),
  Coffee(
      name: 'MASALA TEA',
      path: 'lib/images/tea2.jpg',
      price: '1.50',
      type: 'Tea',
      description: "Tea, beverage produced by steeping in freshly boiled water the young leaves and leaf buds of the tea plant, Camellia sinensis."),
];
