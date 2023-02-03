import 'package:carapp/utils/utils.dart';
import 'package:flutter/material.dart';
import '../widgets/specific_card.dart';

class CarDetail extends StatelessWidget {
  final String title;
  final double price;
  final String color;
  final String gearbox;
  final String fuel;
  final String brand;
  final String path;

  CarDetail(
      {required this.title,
      required this.price,
      required this.color,
      required this.gearbox,
      required this.fuel,
      required this.brand,
      required this.path});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(Icons.bookmark,
                  size: 30, color: Theme.of(context).secondaryHeaderColor)),
          IconButton(onPressed: null, icon: Icon(Icons.share, size: 30)),
        ],
      ),
      body: Column(
        children: [
          Text(title, style: MainHeading),
          Text(
            brand,
            style: BasicHeading,
          ),
          Hero(tag: title, child: Image.asset(path)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: '12 Month',
                price: price * 12,
                name2: 'Dollars',
              ),
              SpecificsCard(
                name: '6 Month',
                price: price * 6,
                name2: 'Dollars',
              ),
              SpecificsCard(
                name: '1 Month',
                price: price * 1,
                name2: 'Dollars',
              )
            ],
          ),
          SizedBox(height: 10),
          Text(
            'SPECIFICATIONS',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpecificsCard(
                name: 'Color',
                name2: color,
                price: price,
              ),
              SpecificsCard(
                name: 'Gearbox',
                name2: gearbox,
                price: price,
              ),
              SpecificsCard(
                name: 'Fuel',
                name2: fuel,
                price: price,
              )
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purple),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
            onPressed: null,
            child: Text(
              'Book Now',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
