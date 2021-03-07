import 'package:flutter/material.dart';

class CarNameWidget extends StatelessWidget {
  const CarNameWidget({
    Key key,
    @required this.model,
    @required this.brand,
  }) : super(key: key);

  final String model;
  final String brand;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            model,
            style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 2),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            brand,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
        ),
      ],
    );
  }
}
