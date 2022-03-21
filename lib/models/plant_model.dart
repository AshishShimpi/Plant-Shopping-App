// import 'package:flutter/scheduler.dart';

class Plant {
  final String imageUrl;
  final String name;
  final String category;
  final int price;
  final String height;
  final String width;
  final String size;
  final String description;

  Plant({
    this.imageUrl,
    this.name,
    this.height,
    this.width,
    this.category,
    this.price,
    this.size,
    this.description,
  });
}

final List<Plant> plants = [
  Plant(
    imageUrl: 'images/plant0.png',
    name: 'Aloe Vera',
    category: 'Outdoor',
    price: 25,
    size: 'Small',
    height: '34-45cm',
    width: '12cm',
    description:
        'Aloe vera is a succulent plant species of the genus Aloe. It\'s medicinal uses and air purifying ability make it an awesome plant.',
  ),
  Plant(
    imageUrl: 'images/plant1.png',
    name: 'Cool Plant',
    category: 'Indoor',
    price: 30,
    size: 'Medium',
    height: '34-45cm',
    width: '12cm',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur.',
  ),
  Plant(
    imageUrl: 'images/plant2.png',
    name: 'Really Cool Plant',
    category: 'New Arrival',
    price: 42,
    size: 'Large',
    height: '34-45cm',
    width: '12cm',
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur porta risus id urna luctus efficitur. Suspendisse vulputate faucibus est, a vehicula sem eleifend quis.',
  ),
];
