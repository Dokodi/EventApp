import 'package:flutter/material.dart';

class HashTagCard extends StatelessWidget {
  final String title;
  const HashTagCard({
    required this.title,
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      width: 90,
      height: 30,
      child: Row(
        children: [
          Container(
            width: 87,
            height: 26,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(255, 71, 68, 68), width: 2
              ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(
    title,
    style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
    )
            )),
              
            ),
          
        ],
      ),
    );
  }
}
