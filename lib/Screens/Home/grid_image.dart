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
                  'assets/images/mid.png',
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
      itemCount: 10,
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'assets/images/mid.png',
                            height: 150,
                            width: 150,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                      const Column(
                        children: [
                          Text('data'),
                          Text('data'),
                          Text('data'),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text('data'),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const Divider(
                  indent: 120,
                  endIndent: 20,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}
