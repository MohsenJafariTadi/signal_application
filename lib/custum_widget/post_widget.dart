import 'package:flutter/material.dart';

Widget getBlogPost({required String imageName, required String title}){
  return Column(
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image(
          image: AssetImage('images/$imageName.png'),
        ),
      ),
      Text(
        ' $title :سیگنال خرید  ',
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.price_check,
            color: Colors.red,
            size: 25,
          ),
          Text('15/40:فروش روی'),
          SizedBox(
            width: 20,
          ),
          Text('14/40:خرید روی'),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.sell,
            color: Colors.green,
            size: 30,
          ),
        ],
      ),
      const SizedBox(
        width: 200,
        child: Divider(),
      ),
    ],
  );
}