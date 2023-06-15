import 'package:flutter/material.dart';

SizedBox imagegrid() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/101.png',
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                ),
                const Text(
                  'hello',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    ),
  );
}

SizedBox listimage() {
  return SizedBox(
    height: 200,
    child: ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      },
    ),
  );
}
